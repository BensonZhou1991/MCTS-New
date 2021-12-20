# -*- coding: utf-8 -*-
"""
Created on Wed Oct 13 22:22:04 2021

@author: zhoux
"""
from qiskit import QuantumCircuit, QuantumRegister
import networkx as nx
from networkx import DiGraph
import numpy as np

'''
gate is a tuple (gate_name, (qubits), (parameters))
supported gate_name:
    cx
    u3
    ...
'''
# {gate_name: (num_qubits, num_parameters)}
supported_gate_names = {'cx':(2, 0), 'h':(1, 0), 't':(1, 0), 'x':(1, 0), 
                        'y':(1, 0), 'z':(1, 0), 's':(1, 0), 'rx':(1, 1), 
                        'ry':(1, 1), 'rz':(1, 1), 'u3':(1, 3), 'tdg':(1, 0),
                        'p':(1, 1), 'u2':(1, 2), 'u1':(1, 1)}

'''parameters for cost heuristic'''
# maximum # CX gates for a 3-qubit gate
## If you don't want to enable the 3-qubit gate cascading, set it to np.inf
## If you want to cascade the 3-qubit gates greedily, set it to 0
## recommend value: 7
gate_3q_thre = 6
gate_2q_thre = 3

'''parameters for AQC'''
repeat = 2 #3
depth = 3 #3
prune_rate = 0 #0.5
num_para_threshold = np.inf#6*8
## 'deep_search', 'partial_trace_heuristic', 'deep_search_depth'
compile_method = 'deep_search'
layer_type = 'cx'# 'cx' or 'rotation'
num_process = 8
distance_threshold = 1e-9

if gate_3q_thre != 7:
    print('gate_3q_thre is {}, not in the recommended value!'.format\
          (str(gate_3q_thre)))
if gate_2q_thre != 3:
    print('gate_2q_thre is {}, not in the recommended value!'.format\
          (str(gate_2q_thre)))
if distance_threshold != 1e-9:
    print('distance_threshold is {}, not in the recommended value!'.format\
          (str(distance_threshold)))

def add_gate_to_qiskit_cir(cir, gate):
    name = gate[0]
    q = gate[1]
    p = gate[2]
    if len(q) > 2: raise()
    if not name in supported_gate_names:
        raise(Exception('Unsupported gate {}'.format(name)))
    if name == 'cx': cir.cx(q[0], q[1])
    if name == 'h': cir.h(q[0])
    if name == 's': cir.s(q[0])
    if name == 't': cir.t(q[0])
    if name == 'x': cir.x(q[0])
    if name == 'y': cir.y(q[0])
    if name == 'z': cir.z(q[0])
    if name == 'p': cir.p(p[0], q[0])
    if name == 'rx': cir.rx(p[0], q[0])
    if name == 'ry': cir.ry(p[0], q[0])
    if name == 'rz': cir.rz(p[0], q[0])
    if name == 'u1': cir.u1(p[0], q[0])
    if name == 'u2': cir.u2(p[0], p[1], q[0])
    if name == 'u3': cir.u(p[0], p[1], p[2], q[0])
    if name == 'tdg': cir.tdg(q[0])

def CreateCircuitFromQASM(file, path=None):
    #QASM_file = open('inputs/QASM example/' + file, 'r')
    if path == None:
        path = 'qasm_circuits/'
    #QASM_file = open('D:/anaconda3/envs/quantum/Lib/site-packages/circuittransform/inputs/QASM example/100_cx_increase_q/' + file,
    #                 'r')
    QASM_file = open(path + file, 'r')
    iter_f = iter(QASM_file)
    QASM = ''
    for line in iter_f: #遍历文件，一行行遍历，读取文本
        QASM = QASM + line
    #print(QASM)
    cir = QuantumCircuit.from_qasm_str(QASM)
    QASM_file.close
    
    return cir

class DG(DiGraph):
    def __init__(self, ):
        super().__init__()
        self.qubit_to_node = [None] * 500
        self.num_gate_2q = 0
        self.num_gate_1q = 0
        self.node_count = 0
        self.num_q = None
    
    @property
    def num_gate(self):
        return self.num_gate_1q + self.num_gate_2q
    
    def get_node_count(self, num_q=None):
        if num_q == None: return len(self.nodes)
        count = 0
        for node in self.nodes:
            if self.get_node_num_q(node) == num_q: count += 1
        return count
    
    def print_info(self):
        '''Print some key parameters of the DG'''
        print("# two-qubit nodes is", self.get_node_count(2))
        print("# three-qubit nodes is", self.get_node_count(3))
    
    def add_edge_top_protect(self, node_in, node_out):
        '''
        Add edge and protect the topological order. The nodes will be renamed
        or relabeled if needed.
        '''
        de = 0.2
        if node_in == node_out: raise()
        node_in_orig, node_out_orig = node_in, node_out
        if node_in > node_out:
            # try to decrease node_in index
            node_in_new = node_in
            min_i = -1
            for node in self.pred[node_in]:
                if node > min_i: min_i = node
            for i in np.arange(node_in-1, min_i, -1*de):
                if not i in self.nodes:
                    node_in_new = i
                    if node_in_new < node_out: break
            node_in = node_in_new
        if node_in > node_out:
            # try to increase node_out index
            node_out_new = node_out
            max_i = self.node_count + 1
            for node in self.succ[node_out]:
                if node < max_i: max_i = node
            for i in np.arange(node_out+1, max_i, de):
                if not i in self.nodes:
                    node_out_new = i
                    if node_out_new > node_in: break
            node_out = node_out_new
        if node_in >= node_out:
            raise()
        # relabel nodes and qubit_to_node
        if node_in_orig != node_in:
            for q in self.get_node_qubits(node_in_orig):
                if node_in_orig == self.qubit_to_node[q]:
                    self.qubit_to_node[q] = node_in
            nx.relabel_nodes(self, {node_in_orig:node_in}, copy=False)
        if node_out_orig != node_out:
            for q in self.get_node_qubits(node_out_orig):
                if node_out_orig == self.qubit_to_node[q]:
                    self.qubit_to_node[q] = node_out
            nx.relabel_nodes(self, {node_out_orig:node_out}, copy=False)
        self.add_edge(node_in, node_out)
        return node_in, node_out
    
    def add_gate(self, gate):
        '''
        Attributes of a node:
            gates
            num_gate_1q
            num_gate_2q
            qubits
        '''
        # add node
        node_new = self.node_count
        self.node_count += 1
        self.add_node(node_new)
        self.nodes[node_new]['gates'] = [gate]
        self.nodes[node_new]['qubits'] = list(gate[1])
        self.nodes[node_new]['num_gate_1q'], self.nodes[node_new]['num_gate_2q'] = 0, 0
        if len(gate[1]) == 1:
            self.nodes[node_new]['num_gate_1q'] += 1
            self.num_gate_1q += 1
        if len(gate[1]) == 2:
            self.nodes[node_new]['num_gate_2q'] += 1
            self.num_gate_2q += 1
        if len(gate[1]) > 2: raise()
        # add edges
        for q in gate[1]:
            node_parent = self.qubit_to_node[q]
            if node_parent != None:
                self.add_edge(node_parent, node_new)
            self.qubit_to_node[q] = node_new
        return node_new
            
    def get_node_num_q(self, node):
        return len(self.nodes[node]['qubits'])
    
    def get_node_num_2q_gates(self, node):
        return self.nodes[node]['num_gate_2q']
    
    def get_node_num_1q_gates(self, node):
        return self.nodes[node]['num_gate_1q']
    
    def get_node_gates(self, node):
        return self.nodes[node]['gates']
    
    def get_node_qubits(self, node):
        return self.nodes[node]['qubits']
    
    def add_gate_absorb(self, gate):
        '''Add a gate and absorb is if possible'''
        nodes = []
        for q in gate[1]:
            node_father = self.qubit_to_node[q]
            if not node_father in nodes and node_father != None:
                nodes.append(node_father)
        # all qubits in the overlapped node must be included in the added gate
        # or all qubits in the added gate must be included in the overlapped node
        nodes_absorb = []
        for node in nodes:
            flag = True
            if self.get_node_num_q(node) <= len(gate[1]):
                for q in self.nodes[node]['qubits']:
                    if not q in gate[1]:
                        flag = False
                        break
                    # check direct dependency
                    for node_succ in self.succ[node]:
                        for qq in self.get_node_qubits(node_succ):
                            if qq == q:
                                flag = False
                                break
                        if flag == False: break
            else:
                for q in gate[1]:
                    if not q in self.nodes[node]['qubits']:
                        flag = False
                        break
                    # check direct dependency
                    for node_succ in self.succ[node]:
                        for qq in self.get_node_qubits(node_succ):
                            if qq == q:
                                flag = False
                                break
                        if flag == False: break
            if flag: nodes_absorb.append(node)
        # add node
        new_node = self.add_gate(gate)
        # absorb
        while len(nodes_absorb) > 0:
            node = nodes_absorb.pop(0)
            new_node = self.cascade_node(new_node, node, 
                                         nodes_protect=nodes_absorb)
        #self.check()
        return new_node
    
    def cascade_node(self, node1, node2, nodes_protect=[]):
        '''
        Combine two given nodes.
        Here we only update one node and delete the other instead of creating
        one node and deleting both.
        '''
        if not self.check_direct_dependency(node1, node2):
            a = 8
            raise()
        if (node1, node2) in self.edges:
            node_in, node_out = node1, node2
        else:
            if (node2, node1) in self.edges:
                node_in, node_out = node2, node1
            else:
                raise()
        # update attributes
        self.nodes[node_in]['gates'].extend(self.nodes[node_out]['gates'])
        for gate in self.nodes[node_out]['gates']:
            if len(gate[1]) == 1:
                self.nodes[node_in]['num_gate_1q'] += 1
            if len(gate[1]) == 2:
                self.nodes[node_in]['num_gate_2q'] += 1
            for q in gate[1]:
                if not q in self.nodes[node_in]['qubits']:
                    self.nodes[node_in]['qubits'].append(q)
        # delete node and add egdes
        for node in list(self.successors(node_out)):
            node_in, _ = self.add_edge_top_protect(node_in, node)
            # update indices in nodes_protect
            if _ != node and node in nodes_protect:
                nodes_protect[nodes_protect.index(node)] = _
        node_in_orig = node_in
        for node in list(self.predecessors(node_out)):
            if node != node_in_orig:
                _, node_in = self.add_edge_top_protect(node, node_in)
                # update indices in nodes_protect
                if _ != node and node in nodes_protect:
                    nodes_protect[nodes_protect.index(node)] = _
        ## update qubit_to_node
        for q in self.get_node_qubits(node_out):
            if self.qubit_to_node[q] == node_out:
                self.qubit_to_node[q] = node_in
        self.remove_node(node_out)
        #self.check()
        return node_in
    
    def from_qasm(self, file, path=None):
        qiskit_cir = CreateCircuitFromQASM(file, path)
        self.num_q = len(qiskit_cir.qregs[0])
        self.num_q_log = self.num_q
        data = qiskit_cir.data
        for qiskit_gate in data:
            name = qiskit_gate[0].name
            qargs = qiskit_gate[1]
            paras = tuple(qiskit_gate[0].params)
            qubits = []
            for qubit_qiskit in qargs:
                qubits.append(qubit_qiskit.index)
            gate = (name, tuple(qubits), paras)
            self.add_gate_absorb(gate)
    
    def opt_node_gates(self, node):
        '''
        Use gate commutation and cancelling rules to reduce the # gates in one 
        node.
        '''
        import sys
        sys.path.append("D:\\programs\\")
    
    def qiskit_circuit(self, save_to_file=False, add_barrier=False,
                       file_name='circuit'):
        from front_circuit import FrontCircuit
        # init circuits
        qubits = QuantumRegister(self.num_q, 'q')
        ag = nx.complete_graph(self.num_q)
        circuit = FrontCircuit(self, ag)
        cir_qiskit = QuantumCircuit(qubits)
        # add qiskit gates one by one
        while circuit.num_remain_nodes > 0:
            front_nodes = circuit.front_layer
            if len(front_nodes) == 0:
                a = 6
                raise()
                
            for node in front_nodes:
                gates = self.get_node_gates(node)
                for gate in gates:
                    add_gate_to_qiskit_cir(cir_qiskit, gate)
                if add_barrier: cir_qiskit.barrier()
            circuit.execute_front_layer()
        if save_to_file:
            fig = (cir_qiskit.draw(scale=0.7, filename=None, style=None, output='mpl',
                        interactive=False, plot_barriers=True, reverse_bits=False))
            fig.savefig(file_name+'.svg', format='svg')  
        return cir_qiskit
    
    def to_qasm(self, file_name='cir.qasm', add_measurement=False):
        cir = self.qiskit_circuit()
        if add_measurement:
            from qiskit import ClassicalRegister
            c = ClassicalRegister(len(cir.qubits), 'c')
            cir.add_register(c)
            cir.measure(cir.qregs[0], c)
        cir.qasm(filename=file_name)
    
    def draw(self):
        nx.draw(self, with_labels=1)
        
    def check_direct_dependency(self, node1, node2):
        '''
        We say node2 directly depends on node1 if 
            1) two nodes share at least one qubit, i.e., they are connected
            by an edge;
            2) for each shared qubit, there can't be any nodes existing between 
            the two nodes;
            3) there can be any path connecting node1 and node2 other than the
                edge in 1)
        If two node are directly dependent, these nodes can be absorbed or
        cascaded.
        '''
        # check condition 1
        if (node1, node2) in self.edges:
            node_in, node_out = node1, node2
        else:
            if (node2, node1) in self.edges:
                node_in, node_out = node2, node1
            else:
                return False
        # check condition 2
        qubits_share = []
        for q in self.get_node_qubits(node_out):
            if q in self.get_node_qubits(node_in):
                qubits_share.append(q)
        if len(qubits_share) == 0: raise()
        for node in self.succ[node_in]:
            if node == node_out: continue
            for q in qubits_share:
                if q in self.get_node_qubits(node): return False
        # check condition 3
        ## here we assume the index of a node always obeys topological order
        to_be_check = list(self.succ[node_in])
        to_be_check.remove(node_out)
        checked = []
        while len(to_be_check) > 0:
            node = to_be_check.pop()
            if node == node_out: return False
            if node > node_out or node in checked:
                continue
            to_be_check.extend(list(self.succ[node]))
            checked.append(node)
        return True
    
    def check_absorbable(self, node_org, node_abs):
        '''check if node_abs can be absorbed into node_org'''
        if self.get_node_num_q(node_abs) > self.get_node_num_q(node_org):
            return False
        for q in self.get_node_qubits(node_abs):
            if not q in self.get_node_qubits(node_org): return False
        if not self.check_direct_dependency(node_org, node_abs):
            return False
        return True
    
    def check_absorbable2(self, nodes_org, node_abs, flag_pred):
        '''
        Check if node_abs can be absorbed into node_org
        if flag_pred:
            node_abs is before nodes_org
        else:
            node_abs is after nodes_org
        '''
        qubits_org = []
        for node in nodes_org:
           for q in self.get_node_qubits(node):
               if not q in qubits_org: qubits_org.append(q)
        if self.get_node_num_q(node_abs) > len(qubits_org):
            return False
        for q in self.get_node_qubits(node_abs):
            if not q in qubits_org: return False
        if flag_pred:
            for node in self.succ[node_abs]:
                if not node in nodes_org: return False
        else:
            for node in self.pred[node_abs]:
                if not node in nodes_org: return False
        return True
    
    def get_node_cost_heuristic(self, node):
        '''
        Use heuristics to predict the cost of a node, i.e., the # of CXs needed
        by an AQC to re-compile the gates in the given node.
        '''
        num_q = self.get_node_num_q(node)
        num_gates_2q = self.get_node_num_2q_gates(node)
        if num_q == 2:
            return min(gate_2q_thre, num_gates_2q)
        if num_q == 3:
            return min(gate_3q_thre, num_gates_2q)
        if num_q > 3: return num_gates_2q
        raise()
        
    def opt_node(self, node, short_len_ag):
        '''
        Use cascading and absorbing to reduce the node count via heuristics.
        '''
        # find potential nodes that can be absorbed
        nodes_cascade = []
        for node_cas in self.succ[node]:
            if self.check_direct_dependency(node, node_cas):
                nodes_cascade.append([node, node_cas])
        for node_cas in self.pred[node]:
            if self.check_direct_dependency(node, node_cas):
                nodes_cascade.append([node, node_cas])
        # evaluate each cascading target
        ## specifically, we find all nodes that can be futher absorbed, then
        ## we use heuristic to compare the cost of nodes before 
        ## absorbing with that after absorbing
        if len(nodes_cascade) == 0: return 0
        scores = np.empty(len(nodes_cascade))
        for i in range(len(nodes_cascade)):
            # find nodes to be combined
            nodes = nodes_cascade[i]
            candidates_pred = []
            for node2 in nodes:
                for node_pred in self.pred[node2]:
                    if not node_pred in nodes and \
                        not node_pred in candidates_pred:
                            candidates_pred.append(node_pred)
            candidates_succ = []
            for node2 in nodes:
                for node_succ in self.succ[node2]:
                    if not node_succ in nodes and \
                        not node_succ in candidates_succ:
                            candidates_succ.append(node_succ)
            # check predecessors
            while len(candidates_pred) > 0:
                node_eval = candidates_pred.pop()
                if self.check_absorbable2(nodes, node_eval, flag_pred=True):
                    nodes.append(node_eval)
                    for node_pred in self.pred[node_eval]:
                        if not node_pred in nodes and \
                            not node_pred in candidates_pred:
                                candidates_pred.append(node_pred)
            # check successors
            while len(candidates_succ) > 0:
                node_eval = candidates_succ.pop()
                if self.check_absorbable2(nodes, node_eval, flag_pred=False):
                    nodes.append(node_eval)
                    for node_succ in self.succ[node_eval]:
                        if not node_succ in nodes and \
                            not node_succ in candidates_succ:
                                candidates_succ.append(node_succ)
            # calculate heuristic score
            ## cost before cascading
            cost_before = 0
            for node2 in nodes:
                cost_before += self.get_node_cost_heuristic(node2)
            ## heuristic cost after cascading
            qubits = []
            for node2 in nodes:
               for q in self.get_node_qubits(node2):
                   if not q in qubits: qubits.append(q)
            num_q = len(qubits)
            if num_q == 2:
                cost_after = min(gate_2q_thre, cost_before)
            if num_q == 3:
                cost_after = min(gate_3q_thre, cost_before)
            if num_q > 3: cost_after = np.inf
            ## heuristic score for current cascading strategy
            scores[i] = cost_before - cost_after
        # find the best cascading strategy
        best_index = np.argmax(scores)
        best_score = scores[best_index]
        if best_score <= 0:
            return 0
        # cascade nodes
        nodes = nodes_cascade[best_index]
        node2 = node
        for node3 in nodes:
            if node3 != node2:
                node2 = self.cascade_node(node2, node3)
        # recurse
        best_score += self.opt_node(node2, short_len_ag)
        #self.check()
        if best_score < 0: raise()
        return best_score
    
    def get_node_unitary(self, node):
        '''
        Use classical simulation to get the unitary of a given node.
        '''
        from qiskit import BasicAer, execute
        backend = BasicAer.get_backend('unitary_simulator')
        # construct qiskit circuit
        num_q = self.get_node_num_q(node)
        q_phy = QuantumRegister(num_q, 'q')
        cir_qiskit = QuantumCircuit(q_phy)
        q_log = np.array(self.get_node_qubits(node))
        q_log.sort()
        gates = self.get_node_gates(node)
        for gate in gates:
            qubits = []
            for q in gate[1]:
                qubits.append(np.argmax(q_log == q))
            add_gate_to_qiskit_cir(cir_qiskit, (gate[0], qubits, gate[2]))
        # do simulation
        job = execute(cir_qiskit, backend)
        u = job.result().get_unitary(cir_qiskit)
        return u
            
    def opt_node_aqc(self, node, ag):
        '''
        Use approximate quantum compiler to optimize gates in a given node
        Return: # of reduced CX gates by AQC
        '''
        import sys
        if not "d:\\programs\\quantum_compiler" in sys.path:
            sys.path.append("d:\\programs\\quantum_compiler")
        from search_space import SearchSpace
        # extract unitary, sub-AG and physical qubits
        qubits = self.get_node_qubits(node)
        qubits.sort()
        target_u = self.get_node_unitary(node)
        sub_ag = nx.subgraph(ag, qubits)
        nodes_mapping = {}
        for i in range(len(qubits)): nodes_mapping[qubits[i]] = i
        sub_ag = nx.relabel.relabel_nodes(sub_ag, nodes_mapping, copy=True)
        # start optimization
        cost_origin = self.get_node_num_2q_gates(node)
        best_cost = np.inf
        for _ in range(repeat):
            search_tree = SearchSpace(sub_ag, [target_u], 
                                      search_depth=depth,
                                      prune_rate=prune_rate,
                                      num_para_threshold=num_para_threshold,
                                      compile_method=compile_method,
                                      layer_type=layer_type,
                                      num_process=num_process,
                                      distance_threshold=distance_threshold,)
            res = search_tree.start_compile()
            if res == None: continue
            current_num_layer = res['layer_count']
            current_distance = res['distance']
            current_cost = res['cost']
            if current_cost < best_cost:
                best_cost = current_cost
                best_num_layer = current_num_layer
                best_distance = current_distance
                best_cir = res['circuit']
                best_paras = res['paras']
        if best_cost < cost_origin:
            # replace the gates in the node
            self.num_gate_2q -= self.get_node_num_2q_gates(node)
            self.num_gate_1q -= self.get_node_num_1q_gates(node)
            self.nodes[node]['num_gate_2q'] = 0
            self.nodes[node]['num_gate_1q'] = 0
            qubits_phy = np.array(self.get_node_qubits(node))
            qubits_phy.sort()
            gates_new = []
            # add gates
            p_i = 0
            for gate, qubits in best_cir.gates:
                gate_name = gate.name
                num_p = supported_gate_names[gate_name][1]
                paras = []
                for _ in range(num_p):
                    paras.append(best_paras[p_i])
                    p_i += 1
                qubits_new = []
                for q in qubits: qubits_new.append(qubits_phy[q])
                qubits = qubits_new
                gates_new.append((gate_name, tuple(qubits), paras))
                if len(qubits) == 1:
                    self.num_gate_1q += 1
                    self.nodes[node]['num_gate_1q'] += 1
                if len(qubits) == 2:
                    self.num_gate_2q += 1
                    self.nodes[node]['num_gate_2q'] += 1
            self.nodes[node]['gates'] = gates_new
        return max(0, cost_origin - best_cost)
            # Old way to add gates which ignores the parameters
# =============================================================================
#         if best_cost < cost_origin:
#             # replace the gates in the node
#             self.num_gate_2q -= self.get_node_num_2q_gates(node)
#             self.num_gate_1q -= self.get_node_num_1q_gates(node)
#             self.nodes[node]['num_gate_2q'] = 0
#             self.nodes[node]['num_gate_1q'] = 0
#             qubits = np.array(self.get_node_qubits(node))
#             qubits.sort()
#             gates_new = []
#             # add u3 layer
#             for q in qubits:
#                 gates_new.append(('u3', (q, ), (0, 0, 0)))
#                 self.num_gate_1q += 1
#                 self.nodes[node]['num_gate_1q'] += 1
#             # add gates
#             p_i = 0
#             for gate, qubits in best_cir.gates:
#                 gate_name = gate.name
#                 num_p = supported_gate_names[gate_name][1]
#                 paras = []
#                 for _ in range(num_p):
#                     paras.append(best_paras[p_i])
#                     p_i += 1
#                 gates_new.append((gate_name, tuple(qubits), paras))
#                 if len(qubits) == 1: self.num_gate_1q += 1
#                 if len(qubits) == 2: self.num_gate_2q += 1
#             self.nodes[node]['gates'] = gates_new
# =============================================================================
    
    def opt_aqc(self, ag):
        '''
        Use approximate quantum compiler to optimize all nodes in DG
        '''
        score = 0
        i = len(self.nodes) + 1
        for node in self.nodes:
            i -= 1
            print('\r%d nodes unfinished'
                  %i, end='')
            if self.get_node_num_q(node) == 2:
                if self.get_node_num_2q_gates(node) > 3:
                    score += self.opt_node_aqc(node, ag)
            if self.get_node_num_q(node) > 2:
                score += self.opt_node_aqc(node, ag)
        return score
                
    def opt_dg(self, shortest_length_ag):
        '''
        We construct a new DG and try to use heuristics to cascade and absorb
        gates.
        '''
        dg_new = DG()
        # add node from self to dg_new layer-by-layer
        from front_circuit import FrontCircuit
        # init circuits
        ag = nx.complete_graph(self.num_q)
        circuit = FrontCircuit(self, ag)
        # add qiskit gates one by one
        while circuit.num_remain_nodes > 0:
            front_nodes = circuit.front_layer
            if len(front_nodes) == 0:
                raise()
            for node in front_nodes:
                gates = self.get_node_gates(node)
                for gate in gates:
                    add_node = dg_new.add_gate_absorb(gate)
                    if len(gate[1]) > 1:
                        dg_new.opt_node(add_node, shortest_length_ag)
            circuit.execute_front_layer()
        return dg_new
    
    def check(self):
        '''Check whether current DG is legal.'''
        try:
            cycles = nx.find_cycle(self)
            print(cycles)
            raise()
        except:
            pass
        self.qiskit_circuit(save_to_file=False)
    
    def get_unitary(self, num_q, swaps=[]):
        '''
        Use classical simulation to get the unitary of the whole DG.
        swaps:
            SWAP gates added to the end of circuit to restore the mapping
        '''
        from front_circuit import FrontCircuit
        from qiskit import BasicAer, execute
        backend = BasicAer.get_backend('unitary_simulator')
        # construct qiskit circuit
        q = QuantumRegister(num_q, 'q')
        cir_qiskit = QuantumCircuit(q)
        ag = nx.complete_graph(self.num_q)
        circuit = FrontCircuit(self, ag)
        # add qiskit gates one by one
        while circuit.num_remain_nodes > 0:
            front_nodes = circuit.front_layer
            if len(front_nodes) == 0:
                raise()
            for node in front_nodes:
                gates = self.get_node_gates(node)
                for gate in gates:
                    add_gate_to_qiskit_cir(cir_qiskit, gate)
            circuit.execute_front_layer()
        # add swaps
        for q0, q1 in swaps:
            cir_qiskit.swap(q0, q1)
        # do simulation
        job = execute(cir_qiskit, backend)
        u = job.result().get_unitary(cir_qiskit)
        return u

if __name__ == "__main__":
    from cir_gen.ag import GenerateArchitectureGraph
    method_AG = ['full', 20]
    ag, _ = GenerateArchitectureGraph(method_AG)
    dg = DG()
    dg.from_qasm('test.qasm')
    #cir = dg.qiskit_circuit(save_to_file=True, add_barrier=True)
    #dg.draw()
    h_score = dg.opt_node(45, ag)
    cir2 = dg.qiskit_circuit(save_to_file=True, add_barrier=True)
    u = dg.get_node_unitary(32)
    dg.opt_aqc(ag)
    cir3 = dg.qiskit_circuit(save_to_file=True, add_barrier=True,
                             file_name='circuit2')