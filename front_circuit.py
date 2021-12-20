# -*- coding: utf-8 -*-
"""
Created on Sun May 23 23:44:08 2021

@author: Xiangzhen Zhou
"""
import numpy as np

def qubit_convert(q_list):
    pass

class FrontCircuit():
    def __init__(self, DG, AG, front_cir_from=None):
        '''
        

        Parameters
        ----------
        map_list : TYPE
            index: logical qubits
            value: physical qubits
        DG : TYPE
            DESCRIPTION.

        Returns
        -------
        None.

        '''
        self.DG = DG
        self.AG = AG
        self.num_q_phy = len(AG)
        self.num_q_log = DG.num_q_log
        self.__hash = None
        #self.unassigned_q = self.num_q_log
        if front_cir_from == None:
            self.num_remain_nodes = len(DG)
            # initial mapping
            self.log_to_phy = [-1] * self.num_q_log
            self.phy_to_log = [-1] * self.num_q_phy
            # find first gates and front layer
            # first gate value is -1 when the qubit has no gate in the front
            self.first_gates = [-1] * self.num_q_log
            self.front_layer = []
            current_nodes = []
            used_nodes = []
            for node in DG.nodes:
                if DG.in_degree[node] == 0:
                    current_nodes.append(node)
                    self.front_layer.append(node)
            i = 0
            while i < self.num_q_log and len(current_nodes) > 0:
                current_nodes.sort()
                node = current_nodes.pop(0)
                used_nodes.append(node)
                qubits = DG.nodes[node]['qubits']
                for q in qubits:
                    if self.first_gates[q] == -1:
                        self.first_gates[q] = node
                        i += 1
                for node_new in DG.successors(node):
                    if not node_new in used_nodes:
                        flag = True
                        for node_pre in DG.predecessors(node_new):
                            if not node_pre in used_nodes: flag = False
                        if flag == True: current_nodes.append(node_new)
            if i > self.num_q_log: raise()
        else:
            # copy
            self.num_remain_nodes = front_cir_from.num_remain_nodes
            # initial mapping
            self.log_to_phy = front_cir_from.log_to_phy.copy()
            self.phy_to_log = front_cir_from.phy_to_log.copy()
            # find first gates and front layer
            self.first_gates = front_cir_from.first_gates.copy()
            self.front_layer = front_cir_from.front_layer.copy()
            
    def __hash__(self):
        if self.__hash == None:
            info = tuple(self.front_layer), tuple(self.log_to_phy)
            self.__hash = hash(info)
        return self.__hash
    
    def assign_mapping_from_list(self, map_list):
        '''here the indices in map_list represent logical qubits'''
        for q_log in range(self.num_q_log):
            q_phy = map_list[q_log]
            self.log_to_phy[q_log] = q_phy
            self.phy_to_log[q_phy] = q_log
        exe_gates = self.execute_gates()
        return exe_gates
        
    def assian_mapping_naive(self):
        map_list = list(range(self.num_q_log))
        return self.assign_mapping_from_list(map_list)
        
    def swap(self, swap_phy):
        '''update via a SWAP'''
        q_phy0, q_phy1 = swap_phy
        q_log0, q_log1 = self.phy_to_log[q_phy0], self.phy_to_log[q_phy1]
        # update mapping
        self.phy_to_log[q_phy0] = q_log1
        self.phy_to_log[q_phy1] = q_log0
        if q_log0 != -1: self.log_to_phy[q_log0] = q_phy1
        if q_log1 != -1: self.log_to_phy[q_log1] = q_phy0
        # execute gates
        return self.execute_gates()
        
    def copy(self):
        return FrontCircuit(self.DG, self.AG, self)
    
    def swap_new(self, swap_phy):
        '''use a SWAP to get a new FrontCircuit object'''
        #new_cir = FrontCircuit(self.DG, self.AG, self)
        new_cir = self.copy()
        exe_gates = new_cir.swap(swap_phy)
        return new_cir, exe_gates
    
    def _executable(self, node):
        '''judge whether a node is executable'''
        q_log0, q_log1 = self.DG.nodes[node]['qubits']
        q_phy0, q_phy1 = self.log_to_phy[q_log0], self.log_to_phy[q_log1]
        if q_phy0 != -1 and q_phy1 != -1:
            if (q_phy0, q_phy1) in self.AG.edges: return True
        return False
    
    def execute_front_layer(self):
        '''
        Execute all gates in the front layer regardless mapping
        However, we won't executable the following possible executable gates'
        '''
        layer = self.front_layer.copy()
        for node_dg in layer:
            self.execute_gate(node_dg)
        
    def execute_gates(self):
        '''find all executable gates and execute them'''
        exe_gates = []
        i = 0
        max_i = len(self.front_layer) - 1
        while i <= max_i:
            current_node = self.front_layer[i]
            # check cnot executable
            if self._executable(current_node):
                self.execute_gate_index(i)
                exe_gates.append(current_node)
                max_i = len(self.front_layer) - 1
            else:
                i += 1
        return exe_gates
    
    def execute_gate_index(self, front_layer_i):
        '''We only execute specified gate and will not execute its successors'''
        self.num_remain_nodes -= 1
        exe_node = self.front_layer.pop(front_layer_i)
        qubits = self.DG.nodes[exe_node]['qubits']
        nodes_next = list(self.DG.successors(exe_node))
        nodes_next.sort()
        for q in qubits: self.first_gates[q] = -1
        # deal with the successors of executed node
        ## here we assume the indices of nodes in DG follows the topological
        ## order
        for node in nodes_next:
            for q in self.DG.nodes[node]['qubits']:
                if self.first_gates[q] == -1: self.first_gates[q] = node
            flag = True
            for q in self.DG.nodes[node]['qubits']:
                if self.first_gates[q] != node:
                    flag = False
                    break
            if flag: self.front_layer.append(node)
                
    def execute_gate(self, node_DG):
        '''We only execute specified gate and will not execute its successors'''
        front_layer_i = self.front_layer.index(node_DG)
        self.execute_gate_index(front_layer_i)
        
    def execute_gate_remote(self, node_DG):
        '''
        Execute a gate (node in DG) with remote CNOT and then execute all its
        successors
        Return:
            list: [(cx1), cx2, ...] physical CNOTs needed for the remote gates
            list: [node1, node2, ...] newly executed nodes in DG excluding
            the input node_DG
        '''
        # construct remote CNOTs
        qubits_log = self.DG.nodes[node_DG]['qubits']
        qubits_phy = (self.log_to_phy[qubits_log[0]],
                      self.log_to_phy[qubits_log[1]])
        if self.AG.shortest_length[qubits_phy[0]][qubits_phy[1]] != 2: raise()
        bridge_q = self.AG.shortest_path[qubits_phy[0]][qubits_phy[1]][1]
        remote_cxs = [(qubits_phy[0], bridge_q), (bridge_q, qubits_phy[1]),
                      (qubits_phy[0], bridge_q), (bridge_q, qubits_phy[1])]
        # execute nodes in DG
        front_layer_i = self.front_layer.index(node_DG)
        self.execute_gate_index(front_layer_i)
        exe_nodes = self.execute_gates()
        return remote_cxs, exe_nodes
        
    def pertinent_swaps(self, score_layer):
        '''
        Get pertinent swaps and their evaluations
        score_layer:
            # of layers needed to be considered to provide a score for each SWAP
        '''
        swaps_phy = []
        h_scores = []
        h_scores_front = []
        qubits_phy_node = [-1] * self.num_q_phy
        for node in self.front_layer:
            q0, q1 = self.DG.nodes[node]['qubits']
            q0_phy = self.log_to_phy[q0]
            q1_phy = self.log_to_phy[q1]
            qubits_phy_node[q0_phy] = node
            qubits_phy_node[q1_phy] = node
                
        for swap in self.AG.edges:
            q0, q1 = swap
            qubits_phy_other = list(range(self.num_q_phy))
            # physical qubits before swap to those after swap 
            qubits_phy_other[q0] = q1
            qubits_phy_other[q1] = q0
            involve_nodes = []
            # check swap pertinent
            if qubits_phy_node[q0] != -1:
                involve_nodes.append(qubits_phy_node[q0])
            if qubits_phy_node[q1] != -1:
                involve_nodes.append(qubits_phy_node[q1])
            # add swap and score info
            if len(involve_nodes) > 0:
                swaps_phy.append(swap)
                i = 0
                # calculate h scores for the swap
                current_score, current_score_front = 0, 0
                node_count = 0
                decay = 1
                for layer_i in range(score_layer):
                    i_max = len(involve_nodes)
                    while i <= i_max - 1:
                        node = involve_nodes[i]
                        i += 1
                        q0, q1 = self.DG.nodes[node]['qubits']
                        q0, q1 = self.log_to_phy[q0], self.log_to_phy[q1]
                        # is this node relevant to the swap?
                        if q0 in swap or q1 in swap:
                            dis_before = self.AG.shortest_length[q0][q1]
                            dis_after = self.AG.shortest_length[qubits_phy_other[q0]]\
                                [qubits_phy_other[q1]]
                            score_add = dis_before - dis_after
                            #if score_add < 0 and layer_i > 0: continue
                            if layer_i == 0: current_score_front += score_add
                            current_score += score_add * decay
                            node_count += 1
                            for node_next in self.DG.successors(node):
                                if not node_next in involve_nodes:
                                    involve_nodes.append(node_next)
                    decay *= 0.7
                h_scores.append(current_score / 1)
                h_scores_front.append(current_score_front)
        return swaps_phy, h_scores, h_scores_front
    
    def print(self):
        gate_phy = []
        for node in self.front_layer:
            q0, q1 = self.DG.nodes[node]['qubits']
            gate_phy.append((self.log_to_phy[q0], self.log_to_phy[q1]))
        print('mapping from log to phy:', self.log_to_phy)
        print('remaining gates:', self.num_remain_nodes)
        print('front layer physical gates:', gate_phy)
        #print('qubits first gates:', self.first_gates)
        
    def print_front_layer_qubits(self):
        '''Print the physical qubits in the front layer.'''
        q = []
        for node in self.front_layer:
            q0, q1 = self.DG.nodes[node]['qubits']
            q.append((self.log_to_phy[q0], self.log_to_phy[q1]))
        print(q)
        
    def print_front_layer_len(self):
        '''Print the physical qubits in the front layer.'''
        length = 0
        for node in self.front_layer:
            q0, q1 = self.DG.nodes[node]['qubits']
            q0, q1 = self.log_to_phy[q0], self.log_to_phy[q1]
            length += self.AG.shortest_length[q0][q1] - 1
        print('lenght for cxs in front layer', length)
        
    def get_future_cx_fix_num(self, num_cx):
        '''
        Get a specific number of unexecuted cx info
        (the corresponding operand physical qubits)
        '''
        first_gates_back_up = self.first_gates.copy()
        front_layer_back_up = self.front_layer.copy()
        num_remain_nodes_back_up = self.num_remain_nodes
        cx0 = []
        cx1 = []
        i = 0
        while i < num_cx and self.num_remain_nodes > 0:
            i += 1
            if len(self.front_layer) == 0:
                raise()
            node = self.front_layer[0]
            q0, q1 = self.DG.nodes[node]['qubits']
            cx0.append(self.log_to_phy[q0])
            cx1.append(self.log_to_phy[q1])
            self.execute_gate(node)
        # restore information
        if len(cx0) > num_cx: raise()
        self.first_gates = first_gates_back_up
        self.front_layer = front_layer_back_up
        self.num_remain_nodes = num_remain_nodes_back_up
        return cx0, cx1

    def get_future_cx_fix_num_with_single(self, num_cx):
        '''
        sim_nodes is a list containing all nodes in DG to be simulated
        single_gate: number of single qubit gates after operands of each CX gate
        '''
        first_gates_back_up = self.first_gates.copy()
        front_layer_back_up = self.front_layer.copy()
        num_remain_nodes_back_up = self.num_remain_nodes
        cx0 = []
        cx1 = []
        single_gate0, single_gate1 = [], []
        i = 0
        while i < num_cx and self.num_remain_nodes > 0:
            i += 1
            if len(self.front_layer) == 0:
                raise()
            node = self.front_layer[0]
            q0, q1 = self.DG.nodes[node]['qubits']
            d0, d1 = -1, -1
            cx0.append(self.log_to_phy[q0])
            cx1.append(self.log_to_phy[q1])
            # consider single-qubit gates
            for _, qubits, _ in self.DG.nodes[node]['gates']:
                num_q = len(qubits)
                if num_q == 1:
                    q = qubits[0]
                    if q == q0: d0 += 1
                    if q == q1: d1 += 1
                if num_q == 2:
                    depth_after = max((d0, d1)) + 1
                    d0 = depth_after
                    d1 = depth_after
            single_gate0.append(d0)
            single_gate1.append(d1)
            self.execute_gate(node)
        # restore information
        if len(cx0) > num_cx: raise()
        self.first_gates = first_gates_back_up
        self.front_layer = front_layer_back_up
        self.num_remain_nodes = num_remain_nodes_back_up
        return cx0, cx1, single_gate0, single_gate1

    def get_future_cx_fix_num2(self, num_cx):
        '''
        Get a specific number of unexecuted cx info
        (the corresponding operand physical qubits)
        this mehtod obtain gates layer by layer
        '''
        first_gates_back_up = self.first_gates.copy()
        front_layer_back_up = self.front_layer.copy()
        num_remain_nodes_back_up = self.num_remain_nodes
        cx0 = []
        cx1 = []
        i = 0
        while i < num_cx and self.num_remain_nodes > 0:
            for node in self.front_layer.copy():
                i += 1
                q0, q1 = self.DG.nodes[node]['qubits']
                cx0.append(self.log_to_phy[q0])
                cx1.append(self.log_to_phy[q1])
                self.execute_gate(node)
        # restore information
        self.first_gates = first_gates_back_up
        self.front_layer = front_layer_back_up
        self.num_remain_nodes = num_remain_nodes_back_up
        return cx0, cx1
    
    def get_future_cx_fix_num3(self, num_cx):
        '''
        Get a specific number of unexecuted cx info
        (the corresponding operand physical qubits)
        this mehtod obtain gates layer by layer and
        return tuples dividing gates according their layers
        '''
        first_gates_back_up = self.first_gates.copy()
        front_layer_back_up = self.front_layer.copy()
        num_remain_nodes_back_up = self.num_remain_nodes
        i = 0
        cx_total = []
        while i < num_cx and self.num_remain_nodes > 0:
            cx_layer = []
            for node in self.front_layer.copy():
                i += 1
                q0, q1 = self.DG.nodes[node]['qubits']
                cx0 = self.log_to_phy[q0]
                cx1 = self.log_to_phy[q1]
                cx_layer.append((cx0, cx1)) if cx0 <= cx1 else cx_layer.append((cx1, cx0))
                self.execute_gate(node)
            cx_layer.sort()
            cx_total.append(cx_layer)
        # restore information
        self.first_gates = first_gates_back_up
        self.front_layer = front_layer_back_up
        self.num_remain_nodes = num_remain_nodes_back_up
        return cx_total
    
    def check_equal(self, cir2):
        if ((self.log_to_phy == cir2.log_to_phy) and 
            (self.phy_to_log == cir2.phy_to_log) and
            (self.num_remain_nodes == cir2.num_remain_nodes) and
            (self.front_layer == cir2.front_layer) and
            (self.first_gates == cir2.first_gates)):
            return True
        else:
            return False
        
    def get_cir_matrix(self, num_layer):
        '''
        create a numpy matrix to represent the circuit with multi-layers containing
        only CNOT gates
        input:
            num_q_log -> total number of logical qubits. E.g., 4
            CNOT_list -> list of CNOT contains tuples showing input logical qubits
                         for corresponding CNOT gates.
                         E.g., [(0, 2), (3, 1), (2, 3) ...]
            output:
                [0 0 1 0
                 0 0 0 1
                 1 0 0 0
                 0 1 0 0]
                [0 0 0 0
                 0 0 0 0
                 0 0 0 1
                 0 0 1 0]
                ......
        '''
        cir_map = np.zeros([num_layer, self.num_q_phy, self.num_q_phy]).astype(np.float32)
        DG = self.DG
        cir = self.copy()
        i = 0
        while i < num_layer:
            for node_dg in cir.front_layer:
                q0, q1 = DG.nodes[node_dg]['qubits']
                q0_phy, q1_phy = (cir.log_to_phy[q0], cir.log_to_phy[q1])
                cir_map[i][q0_phy][q1_phy], cir_map[i][q1_phy][q0_phy] = 1, 1
            # go to next layer
            if len(cir.front_layer) == 0: break
            i += 1
            cir.execute_front_layer()
        return cir_map, i