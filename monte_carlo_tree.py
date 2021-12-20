# -*- coding: utf-8 -*-
"""
Created on Sun May 23 22:47:12 2021

@author: Xiangzhen Zhou

The following modification(s) have been made compare with '05_26_very_basic'
    We use hash table to avoid identical nodes
    We use a self.selec_count variable to make selection time self-adjustable
"""
import networkx as nx
from networkx import DiGraph
import numpy as np
from qiskit import QuantumCircuit
from qiskit import QuantumRegister
import time
from front_circuit import FrontCircuit

score_decay_rate_size = 0.7 # default 0.7 for IBM Q20, J-P
score_decay_rate_depth = 0.85
display_state = 1 # whether we print the internal states during search process
log_data = 0 # transcribe relevant data for figuring?

'''
default select_mode specifies the mode for evaluation during selection
'''
_select_mode_ = ['KS', 15] #['KS', 20]

'''
mode for Back Propagation
['globalscore_depth', [score_decay_rate, depth_threshold]]
recommended value:
    Q20: ['globalscore', [score_decay_rate]]
    J_P: ['globalscore', [score_decay_rate]]
'''
_mode_BP = ['globalscore', None]

'''
mode for decision
    ['global_score']:
        only consider global score
'''
_mode_decision = ['global_score']

'''mode for simulation'''
_mode_sim = ['fix_cx_num', [500, 30]] #['fix_cx_num', [500, 30]]
    
MCTree_key_words = ['select_mode', 'mode_BP', 'mode_sim', 'sim_function',
                    'mode_decision', 'objective', 'use_remote', 'score_layer',
                    'use_prune', 'use_hash']

depth_cx = 1

class MCTree(DiGraph):
    def __init__(self, AG, DG, **args):
        '''
        swap_combination is a list of swaps to be considered
        T: ratio for node evaluation
        node_count: index for newly added node
        '''
        super().__init__()
        # check key words
        for i in args:
            if not i in MCTree_key_words:
                raise(Exception('Unsupported keyword {}'.format(i)))
        # set parameters
        #self.use_remote = use_remote
        self.node_count = 0
        self.AG = AG
        self.num_q_phy = len(AG)
        self.num_q_log = DG.num_q_log
        self.DG = DG
        self.shortest_length_AG = dict(nx.shortest_path_length(AG, source=None,
                                                               target=None,
                                                               weight=None,
                                                               method='dijkstra'))
        self.shortest_path_AG = nx.shortest_path(AG, source=None, target=None, 
                                                 weight=None, method='dijkstra')
        self.max_length = nx.diameter(AG)
        self.fallback_value = self.max_length * 2
        self.fallback_count = 0
        self.selec_count = 0
        self.score_layer = args['score_layer']
        if 'select_mode' in args:
            self.select_mode = args['select_mode']
        else:
            self.select_mode = _select_mode_.copy()
        if 'mode_BP' in args:
            self.mode_BP = args['mode_BP']
        else:
            self.mode_BP = _mode_BP.copy()
        if 'mode_sim' in args:
            self.mode_sim = args['mode_sim']
        else:
            self.mode_sim = _mode_sim.copy()
        if 'sim_function' in args: 
            self.sim_function = args['sim_function']
        if 'use_prune' in args:
            self.use_prune = args['use_prune']
        if 'mode_decision' in args:
            self.mode_decision = args['mode_decision']
        else:
            self.mode_decision = _mode_decision.copy()
        self.objective = args['objective']
        self.use_hash = args['use_hash']
        if self.objective == 'depth':
            self.opt_depth = True
        else:
            self.opt_depth = False
        self.use_remote = args['use_remote']
        self.log = {'score': [],
                    'visit': [],
                    'swap_vs_cx': [],
                    'num_remain_cx': []} # used to store some data for future analysis
        # initialize the first node
        self.root_node = self.add_node_mcts(father_node=None)
        self.init_node = self.root_node
        # init functions
        if self.objective == 'depth':
            self.pick_best_son = self.pick_best_son_depth
            self.decay = score_decay_rate_depth
        if self.objective == 'size':
            self.pick_best_son = self.pick_best_son_size
            self.decay = score_decay_rate_size
    
    def add_node_mcts(self, father_node, added_swap=None, remote_exe_node=None):
        '''
        visited_time: how many times this node has been visited
        added_swap: list like [(in1, in2),...]
        added_remote: remote CNOTs added
        swap_decay: deacy parameter for added SWAP, this is only uesful for 
                    modified globalscore BP mode
        num_remain_gates: number of unexecuted CNOT gates in logical circuit
        local_score: local score
        global_score: global score considering all its son nodes, the initial
                      value is its (local) score
        sim_score: simulation score
        return: generated node number
        '''
        if father_node == None:
            # root node
            cir = FrontCircuit(self.DG, self.AG)
            # use naive mapping for the root node
            exe_gates = cir.assian_mapping_naive()
            num_add_gates_new = 0
            remote_cxs = None
        else:
            cir = self.nodes[father_node]['circuit'].copy()
            if added_swap != None:
                remote_cxs = None
                exe_gates = cir.swap(added_swap)
                num_add_gates_new = self.nodes[father_node]['num_add_gates'] + 3
            if remote_exe_node != None:
                remote_cxs, exe_gates = cir.execute_gate_remote(remote_exe_node)
                num_add_gates_new = self.nodes[father_node]['num_add_gates']\
                    + len(remote_cxs) - 1
        # add node and edge
        # add 'new' node and its edge
        self.add_nodes_from(['new'])
        if father_node != None: self.add_edge(father_node, 'new')
        # update parapeters
        self.nodes['new']['circuit'] = cir
        self.nodes['new']['num_add_gates'] = num_add_gates_new
        self.nodes['new']['father_node'] = father_node
        self.nodes['new']['local_score'] = len(exe_gates)
        if remote_exe_node != None: self.nodes['new']['local_score'] += 1
        self.nodes['new']['global_score'] = self.nodes['new']['local_score']
        self.nodes['new']['added_swap'] = added_swap
        self.nodes['new']['added_remote'] = remote_cxs
        self.nodes['new']['remote_node'] = remote_exe_node
        self.nodes['new']['executed_gates'] = exe_gates
        self.nodes['new']['visited_time'] = 0
        self.nodes['new']['num_remain_gates'] = cir.num_remain_nodes
        self.add_depth('new')
        # check already exist?
        if self.use_hash:
            new_node = hash(cir)
        else:
            new_node = self.node_count
        if new_node in self.nodes:
            # already exist
            # compare
            if self.node_cost('new') < self.node_cost(new_node):
                # the new node is better
                #print('replace')
                old_father = self.nodes[new_node]['father_node']
                old_children = list(self.succ[new_node])
                old_global = self.nodes[new_node]['global_score'] - \
                    self.nodes[new_node]['local_score']
                self.remove_node(new_node)
                # relabel node
                nx.relabel_nodes(self, {'new':new_node}, copy=False)
                # add back the original out edges and global score
                for child in old_children: self.add_edge(new_node, child)
                self.nodes[new_node]['global_score'] = old_global + \
                    self.nodes[new_node]['local_score']
                self._delete_false_leaf(old_father)
                self.selec_count += min(self.nodes[new_node]['local_score'], 1)
            else:
                # the old one is better, hence wo won't create new node
                self.remove_node('new')
                return None
        else:
            # new node
            self.node_count += 1
            nx.relabel_nodes(self, {'new':new_node}, copy=False)
            self.selec_count += min(self.nodes[new_node]['local_score'], 1)
        return new_node
    
    def get_father(self, node):
        return self.nodes[node]['father_node']
    
    def get_circuit(self, node):
        return self.nodes[node]['circuit']
    
    def get_num_exe_gates(self, node):
        num_gates = len(self.nodes[node]['executed_gates'])
        if self.nodes[node]['remote_node'] != None:
            num_gates += 1
        return num_gates
    
    def node_cost_from_father(self, father_node, added_swap, added_cxs):
        if father_node == None: return 0
        if self.opt_depth:
            depth_phy_qubits = self.nodes[father_node]['depth_phy_qubits']
            if added_swap != None:
                q_phy0, q_phy1 = added_swap
                depth = max(depth_phy_qubits[q_phy0], depth_phy_qubits[q_phy1])\
                    + 3*depth_cx
            if added_cxs != None:
                depth_phy_qubits = depth_phy_qubits.copy()
                for q_phy0, q_phy1 in added_cxs:
                    max_depth = max(depth_phy_qubits[q_phy0], 
                                    depth_phy_qubits[q_phy1]) + depth_cx
                    depth_phy_qubits[q_phy0] = max_depth
                    depth_phy_qubits[q_phy1] = max_depth
                depth = np.max(depth_phy_qubits)
            return max(self.nodes[father_node]['depth'], depth)
        else:
            if added_swap != None:
                return self.nodes[father_node]['num_add_gates'] + 3
            if added_cxs != None:
                return self.nodes[father_node]['num_add_gates'] + len(added_cxs) - 1
        
    def node_cost(self, node):
        if self.opt_depth:
            return self.nodes[node]['depth']
        else:
            return self.nodes[node]['num_add_gates']
    
    def add_depth(self, node):
        '''
        Add depth information to a new node
        This should be revoked after or at the end of the add_node method
        
        variables added:
            depth_phy_qubits -> a list in which the index corresponds to the
                                physical qubits and value the depth
            depth_add -> add depht corresponding to the current physical 
                         circuit brougnt by insertinf SWAP gate
        '''
        log_to_phy = self.nodes[node]['circuit'].log_to_phy
        father_node = self.nodes[node]['father_node']
        # add_depth
        if father_node == None:
            # root node
            depth_add = 0
            depth_phy_qubits = np.zeros(self.num_q_phy)
        else:
            depth_phy_qubits_pre = self.nodes[father_node]['depth_phy_qubits']
            depth_phy_qubits = np.array(depth_phy_qubits_pre)
            # consider added SWAP
            swap = self.nodes[node]['added_swap']
            if swap != None:
                q_phy0, q_phy1 = swap
                depth0, depth1 = (depth_phy_qubits[q_phy0],
                                  depth_phy_qubits[q_phy1])
                max_depth = max((depth0, depth1)) + 3*depth_cx
                depth_phy_qubits[q_phy0] = max_depth
                depth_phy_qubits[q_phy1] = max_depth
                depth_after = np.max(depth_phy_qubits)
            # consider remote CNOTs
            added_cxs = self.nodes[node]['added_remote']
            remote_node = self.nodes[node]['remote_node']
            if added_cxs != None:
                gates = self.DG.nodes[remote_node]['gates']
                for name, qubits, p in gates:
                    if len(qubits) == 2:
                        # add remote cxs
                        for q_phy0, q_phy1 in added_cxs[:-1]:
                            # we will exclude the last CNOT
                            max_depth = max(depth_phy_qubits[q_phy0], 
                                            depth_phy_qubits[q_phy1]) + depth_cx
                            depth_phy_qubits[q_phy0] = max_depth
                            depth_phy_qubits[q_phy1] = max_depth
                        depth_after = np.max(depth_phy_qubits)
                        # add back the last cx
                        q_phy0, q_phy1 = added_cxs[-1]
                        max_depth = max(depth_phy_qubits[q_phy0], 
                                        depth_phy_qubits[q_phy1]) + depth_cx
                        depth_phy_qubits[q_phy0] = max_depth
                        depth_phy_qubits[q_phy1] = max_depth
                    if len(qubits) == 1:
                        # add single-qubit gates
                        q_phy = log_to_phy[qubits[0]]
                        depth_phy_qubits[q_phy] += 1
            # depth increasement brought by the SWAP or remote gates
            depth_add = max(depth_after - np.max(depth_phy_qubits_pre),
                            0)
            #print(depth_add)
        # consider newly executed CX gates and the single-qubit gates right
        # after each CX gate
        new_exe_nodes_DG = self.nodes[node]['executed_gates']
        for node_DG in new_exe_nodes_DG:
            for _, qubits, _ in self.DG.nodes[node_DG]['gates']:
                num_q = len(qubits)
                if num_q == 1:
                    q_phy = log_to_phy[qubits[0]]
                    depth_phy_qubits[q_phy] += 1
                if num_q == 2:
                    q_phy0, q_phy1 = log_to_phy[qubits[0]], log_to_phy[qubits[1]]
                    depth0, depth1 = (depth_phy_qubits[q_phy0],
                                      depth_phy_qubits[q_phy1])
                    depth_after = max((depth0, depth1)) + depth_cx
                    depth_phy_qubits[q_phy0] = depth_after
                    depth_phy_qubits[q_phy1] = depth_after
        # Add relevant varibles
        self.nodes[node]['depth_phy_qubits'] = depth_phy_qubits
        self.nodes[node]['depth_add'] = depth_add
        self.nodes[node]['depth'] = np.max(depth_phy_qubits)
    
    def expand_node_via_swap(self, node, swap):
        added_node = self.add_node_mcts(node, added_swap=swap)
        return added_node
    
    def expand_node_via_remote(self, node):
        '''
        expand a node via reomte CNOTs
        '''
        # expand via remote cnot
        cir = self.nodes[node]['circuit']
        front_nodes = cir.front_layer
        log_to_phy = cir.log_to_phy
        added_nodes = []
        # find cnot with length 1
        for exe_node in front_nodes:
            if self.DG.nodes[exe_node]['num_gate_2q'] != 1: continue
            qubits_log = self.DG.nodes[exe_node]['qubits']
            qubits_phy = (log_to_phy[qubits_log[0]],
                          log_to_phy[qubits_log[1]])
            if self.shortest_length_AG[qubits_phy[0]][qubits_phy[1]] == 2:
                # add remote cnot
                added_node = self.add_node_mcts(node, added_swap=None,
                                                remote_exe_node=exe_node)
                if added_node != None: added_nodes.append(added_node)
        return added_nodes
    
    def expansion(self, node):
        '''
        expand a node via all non-trivival swaps and then do backpropogation
        '''
        if self.out_degree[node] != 0: raise(Exception('Expanded node already has son nodes.'))
        
        if self.nodes[node]['num_remain_gates'] == 0:
            # we can't expand finished node
            ## add selection count
            self.selec_count += 1
            return []
        
        swaps, swap_scores, swap_scores_front = \
            self.nodes[node]['circuit'].pertinent_swaps(score_layer=self.score_layer)
        
        # pruning threshold for exp.
        if self.use_prune:
            #score_thre = np.median(swap_scores) # recommend this strategy for random circuits
            score_thre = min(0, np.median(swap_scores))
        else:
            score_thre = -1 * np.inf
        
        added_nodes = []
        for swap, h_score, h_score_front in zip(swaps, swap_scores, 
                                                swap_scores_front):
            if h_score < score_thre and h_score_front <= 0: continue
            add_node = self.expand_node_via_swap(node, swap)
            if add_node == None: continue
            added_nodes.append(add_node)
            if self.score_layer == 0: continue
            h_score *= self.decay #re: 0.7 for realistic circuits
            self.nodes[add_node]['h_score'] = h_score
            self.nodes[add_node]['global_score'] += h_score
            self.nodes[add_node]['local_score'] += h_score
            #self.back_propagation(add_node)
            
        # remote CNOT
        if self.use_remote:
            added_nodes.extend(self.expand_node_via_remote(node))
        
        # BP
        ## check if no nodes opened because of all its sons have already existed
        if self.out_degree(node) > 0:
            best_son, best_socre = self.pick_best_son(node, ['decision'])
            if best_son != None: self.back_propagation(best_son)
        else:
            # check if no nodes opened because of all its sons have already existed
            self._delete_false_leaf(node)
            
        return added_nodes

    def get_son_attributes(self, node, args):
        '''get attributes and sons, represented in list args, from all sons of node'''
        sons = []
        num_attr = len(args)
        num_son = self.out_degree(node)
        res = []
        for _ in range(num_attr): res.append(np.empty([num_son]))
        pos_son = -1
        for son in self.successors(node):
            pos_son += 1
            sons.append(son)
            for pos_arg in range(num_attr):
                new_value = self.nodes[son][args[pos_arg]]
                if new_value == None:
                    #self.PrintSonNodesArgs(node, args)
                    raise(Exception('Value None'))
                    new_value = 0;
                res[pos_arg][pos_son] = new_value
        return sons, res
    
    def pick_best_son_size(self, node, method):
        '''this is a subfunction for selection section'''
        if method[0] == 'KS':
            '''Kocsis and Szepesvári method from WIKI'''
            C = method[1] #this is the parameter for values calculating
            args = ['global_score', 'visited_time']
            sons, res = self.get_son_attributes(node, args)
            scores, visit = res
            
            sum_visit = max(np.sum(visit), 1)
            '''two methods for cal values, comment one and keep one'''
            values = scores + C * np.sqrt(
                    np.log(sum_visit) / (visit + 0.001)
                    )
            
            picked_index = np.argmax(values)
            picked_node = sons[picked_index]
            return picked_node, values[picked_index]
        
        if method[0] == 'decision':
            args = ['global_score']
            sons, res = self.get_son_attributes(node, args)
            scores = res[0]
            # if all son nodes' global score are 0
            #if np.max(scores) == 0 and np.min(scores) == 0:
                #print('WARNING: all scores of candidates are 0!')
            #    return None, 0
            picked_index = np.argmax(scores)
            picked_node = sons[picked_index]
            return picked_node, scores[picked_index]
            
        raise(Exception('Unsupported method {}'.format(str(method))))
        
    def pick_best_son_depth(self, node, method):
        '''this is a subfunction for selection section for depth opt.'''
        if method[0] == 'KS':
            '''Kocsis and Szepesvári method from WIKI'''
            C = method[1] #this is the parameter for values calculating
            args = ['global_score', 'visited_time', 'depth_add']
            sons, res = self.get_son_attributes(node, args)
            scores, visit, depths_add = res
            scores = scores * np.power(score_decay_rate_depth, depths_add)
            
            sum_visit = max(np.sum(visit), 1)
            '''two methods for cal values, comment one and keep one'''
            values = scores + C * np.sqrt(
                    np.log(sum_visit) / (visit + 0.001)
                    )
            
            picked_index = np.argmax(values)
            picked_node = sons[picked_index]
            return picked_node, values[picked_index]
        
        if method[0] == 'decision':
            args = ['global_score', 'depth_add']
            sons, res = self.get_son_attributes(node, args)
            scores, depths_add = res
            scores = scores * np.power(score_decay_rate_depth, depths_add)
            # if all son nodes' global score are 0
            #if np.max(scores) == 0 and np.min(scores) == 0:
                #print('WARNING: all scores of candidates are 0!')
            #    return None, 0
            picked_index = np.argmax(scores)
            picked_node = sons[picked_index]
            return picked_node, scores[picked_index]
            
        raise(Exception('Unsupported method {}'.format(str(method))))
    
    def back_propagation(self, start_node, mode_BP=None):
        '''
        renew a variable reversely
        start_node: is the node the the original value extracted from, note that
                    the first backpropagated node is its father node
        value: Propagated value
        arg_name: the name (string) of this variable
        mode(string):
            'globalscore' ->
                when going to a new node, we compare new_value (global score of 
                its son node)*args[0] + score (of current new node) with old 
                global score varible, if the former is larger than the latter,
                then we update the global score of this new node
        '''
        flag = True
        if mode_BP == None: mode_BP = self.mode_BP
        if mode_BP[0] == 'globalscore':
            dicount = self.decay
            new_value = self.nodes[start_node]['global_score']
            current_node = self.nodes[start_node]['father_node']
            if self.opt_depth:
                dicount = np.power(self.decay, 
                                   self.nodes[start_node]['depth_add'])
            while flag == True and current_node != self.root_node:
                '''calculate decay rate for propagated score'''          
                old_value = self.nodes[current_node]['global_score']
                new_value = new_value * dicount
                new_value = self.nodes[current_node]['local_score'] + new_value
                if new_value > old_value:
                    self.nodes[current_node]['global_score'] = new_value
                    if self.opt_depth:
                        dicount = np.power(self.decay, 
                                           self.nodes[current_node]['depth_add'])
                    current_node = self.nodes[current_node]['father_node']
                else:
                    flag = False
            return None
                    
        raise(Exception('Unsupported BP method {}'.format(str(mode_BP))))

    def selection(self):
        '''
        one playout, arg is decision parameter (string)
        we pick son node (randomly?) from root node to a leaf node, then, expand 
        the leaf node and back propagate the best score of expanded nodes
        return:
            added nodes and search depth
        '''
        current_node = self.root_node
        search_depth = 0
        # proceed until find leaf node
        while self.out_degree[current_node] != 0:
            search_depth += 1
            current_node, current_score = self.pick_best_son(current_node,
                                                             self.select_mode)
            # judge whether wo should ban the expanded nodes from simulation
            #if current_node in self.simulated_nodes: flag_sim = False
            # update total visited time
            self.nodes[current_node]['visited_time'] += 1

        return current_node, search_depth

    def delete_nodes(self, nodes):
        '''delete nodes and all its successors'''
        for node in nodes:
            '''delete'''
            T_succ = nx.dfs_tree(self, node)
            self.remove_nodes_from(T_succ.nodes)
            
    def _delete_false_leaf(self, node):
        # check if no nodes opened because of all its sons have already existed
        ## we call a node with no child after expansion a false leaf
        if not node in self.nodes: return None
        current_node = node
        i = 0
        while self.out_degree(current_node) == 0:
            father = self.nodes[current_node]['father_node']
            self.remove_node(current_node)
            current_node = father
    
    def fallback(self):
        print('Fallback!')
        start_node = self.root_node
        deleted_node = None
        '''find the initial node for fallback'''
        while self.nodes[start_node]['local_score'] == 0 and start_node != self.init_node:
            deleted_node = start_node
            start_node = self.nodes[start_node]['father_node']
        #self.nodes[start_node]['circuit'].print_front_layer()
        '''extract swaps list'''
        executable_vertex = self.nodes[start_node]['circuit'].front_layer
        log_to_phy = self.nodes[start_node]['circuit'].log_to_phy
        min_CX_dis = 1000
        for v in executable_vertex:
            CX = self.DG.nodes[v]['qubits']
            CX_phy = log_to_phy[CX[0]], log_to_phy[CX[1]]
            currant_CX_dis = self.shortest_length_AG[CX_phy[0]][CX_phy[1]]
            if currant_CX_dis < min_CX_dis:
                min_CX_dis = currant_CX_dis
                chosen_CX_phy = CX_phy
        path = self.shortest_path_AG[chosen_CX_phy[0]][chosen_CX_phy[1]].copy()
        #num_swap = int(np.ceil(min_CX_dis/2))
        num_swap = int(min_CX_dis - 1)
        '''set new root node and delete redunant nodes'''
        self.root_node = start_node
        if deleted_node != None: self.delete_nodes([deleted_node])
        '''add swaps'''
        flag = True
        for i in range(num_swap):
            if flag == True:
                added_swap = path.pop(0), path[0]
            else:
                added_swap = path.pop(), path[-1]
            flag = not flag
            added_node = self.expand_node_via_swap(self.root_node, added_swap)
            self.root_node = added_node
        if self.nodes[self.root_node]['local_score'] == 0:
            '''
            if the newly added node still can't execute any CX, there is sth
            wrong with the fallback procedure
            '''
            raise(Exception('Fallback error!'))
    
    def decision(self, mode_decision=None):
        '''
        choose one leaf node, delete all other leaf nodes of its father node
        '''
        #self.nodes[self.root_node]['circuit'].print_front_layer_qubits()
        #self.print_son_attrs(self.root_node, ['added_swap', 'local_score', 'global_score'])
        if mode_decision == None: mode_decision = self.mode_decision
        father_node = self.root_node
        
        if mode_decision[0] == 'global_score':
            best_son, socre = self.pick_best_son(father_node, ['decision'])
        # if we can't find a son node, we do not upated root node
        if best_son == None: return self.root_node
        # init selection count
        self.selec_count = 0
        # delete residual nodes
        deleted_nodes = list(self.successors(father_node))
        deleted_nodes.remove(best_son)
        self.delete_nodes(deleted_nodes)
        #self.nodes[father_node]['son_nodes'] = [best_son]
        '''update fallback count'''
        if self.nodes[best_son]['local_score'] == 0:
            self.fallback_count += 1
        else:
            self.fallback_count = 0
        if self.fallback_count >= self.fallback_value:
            #raise()
            self.fallback()
            self.fallback_count = 0
            return self.root_node
        '''update root node'''        
        self.root_node = best_son
        #print('Chosen next node is %d \n' %best_son)
        if display_state == True:
            print('\r%d gates unfinished'
                  %self.nodes[self.root_node]['num_remain_gates'],end='')
            #print('added swap is %s' %str(self.nodes[best_son]['added_swap']))
            #self.nodes[self.root_node]['circuit'].print_front_layer_len()
            #self.nodes[self.root_node]['circuit'].print_front_layer_qubits()
            #print()
        return self.root_node
    
    def simultation(self, sim_node, mode_sim=None):
        '''
        simulation and BP the simulation score
        Different modes for simulation
        mode_sim = ['name', arg_list]
            name:
                
                fix_cx_num -> 
                do simultaion executing fixed number of CNOT gates.
                arg_list = [simulation_times, num_CX_gates]
        '''
        if sim_node == self.root_node: return None
        if mode_sim == None: mode_sim = self.mode_sim
        
        if mode_sim[0] == 'fix_cx_num' and self.objective == 'size':
            num_exe_cx = mode_sim[1][1] #this is the number of CNOT to be executed
            times_sim = mode_sim[1][0] #how many times
            cir = self.nodes[sim_node]['circuit']
            gate0, gate1 = cir.get_future_cx_fix_num(num_exe_cx)
            if len(gate0) < num_exe_cx: return None
            # because the obtained qubits are physical, we only need naive mapping
            mapping = list(range(self.num_q_phy))
            num_swap_sim = self.sim_function(gate0, gate1, mapping, times_sim)
            # convert the # swaps to simulation score
            sim_score = len(gate0) * np.power(self.decay, num_swap_sim/2)
            # we backpropagate the simulation score
            new_value = self.nodes[sim_node]['local_score'] + sim_score
            if new_value > self.nodes[sim_node]['global_score']:
                self.nodes[sim_node]['global_score'] = new_value
                self.back_propagation(sim_node)
            return None
        
        if mode_sim[0] == 'fix_cx_num' and self.objective == 'depth':
            decay_BP_depth = 0.85
            num_exe_cx = mode_sim[1][1] #this is the number of CNOT to be executed
            times_sim = mode_sim[1][0] #how many times
            cir = self.nodes[sim_node]['circuit']
            gate0, gate1, single_gate0, single_gate1, = cir.get_future_cx_fix_num_with_single(num_exe_cx)
            depth_phy_qubits = list(self.nodes[sim_node]['depth_phy_qubits'])
            # we abandon the simulation with only 1 gate
            # do we really need to do this?
            if len(gate0) < num_exe_cx: return None
            # gen map list for simulation
            # because the obtained qubits are physical, we only need naive mapping
            mapping = list(range(self.num_q_phy))
            res_sim = self.sim_function(gate0, gate1,
                                        single_gate0, single_gate1,
                                        depth_phy_qubits,
                                        mapping, times_sim)
            _, num_depth_swap, num_swap_sim = res_sim
            num_gates = len(gate0)
            num_depth_swap = num_depth_swap * 2
            h_score = num_gates * np.power(decay_BP_depth**(num_depth_swap/num_swap_sim),
                                           num_swap_sim/2)
            # we backpropagation heuristic score
            new_value = self.nodes[sim_node]['local_score'] + h_score
            if new_value > self.nodes[sim_node]['global_score']:
                self.nodes[sim_node]['global_score'] = new_value
                self.back_propagation(sim_node)
            return True
        
        raise(Exception('Unsupported simultation method {}'.format(str(mode_sim))))
        
    def print_swaps(self):
        node = self.init_node
        swaps = []
        while self.out_degree(node) > 0:
            if self.out_degree(node) > 1: raise()
            node = list(self.successors(node))[0]
            swaps.append(self.nodes[node]['added_swap'])
        print(swaps)

    def print_phy_circuit(self):
        from cir_dg import add_gate_to_qiskit_cir
        q_phy = QuantumRegister(self.num_q_phy, 'v')
        cir_phy = QuantumCircuit(q_phy)
        current_node = self.init_node
        flag = True
        while flag == True:
            swap = self.nodes[current_node]['added_swap']
            remote_cnots = self.nodes[current_node]['added_remote']
            nodes_dg = self.nodes[current_node]['executed_gates']
            log_to_phy = self.get_circuit(current_node).log_to_phy
            '''draw swap gates'''
            if swap != None:
                cir_phy.swap(swap[0], swap[1])
            '''draw remote cnot'''
            if remote_cnots != None:
                remote_node = self.nodes[current_node]['remote_node']
                gates = self.DG.nodes[remote_node]['gates']
                for name, qubits, p in gates:
                    if len(qubits) == 1:
                        qubits_phy = []
                        for q in qubits: qubits_phy.append(log_to_phy[q])
                        add_gate_to_qiskit_cir(cir_phy, 
                                               (name, qubits_phy, p))
                    if len(qubits) == 2:
                        for q0, q1 in remote_cnots:
                            cir_phy.cx(q0, q1)
                cir_phy.barrier()
            '''draw transformed gates'''
            for node_dg in nodes_dg:
                gates = self.DG.nodes[node_dg]['gates']
                for name, qubits, p in gates:
                    qubits_phy = []
                    for q in qubits: qubits_phy.append(log_to_phy[q])
                    add_gate_to_qiskit_cir(cir_phy, 
                                           (name, qubits_phy, p))
            cir_phy.barrier()
            '''judge whether the circuit is finished'''
            if self.nodes[current_node]['num_remain_gates'] == 0:
                flag = False
            else:
                sons = list(self.successors(current_node))
                if len(sons) > 1: raise(Exception('more than one successors'))
                current_node = sons[0]
        fig = (cir_phy.draw(scale=0.7, filename=None, style=None, output='mpl',
                            interactive=False, plot_barriers=True,
                            reverse_bits=False))
        fig.savefig('MCTreeSearch_phy.pdf', format='pdf')
        
    def print_node_attrs(self, node, names):
        print('  node %d' %node)
        for name in names:
            print('    %s is %s' %(name, self.nodes[node][name]))
    
    def print_son_attrs(self, father_node, names_son, names_father=[]):
        if not isinstance(names_son, list) and not isinstance(names_son, tuple):
            raise(Exception('names argument must be list or tuple, but it is %s'
                            %type(names_son)))
        if not isinstance(names_father, list) and not isinstance(names_father, tuple):
            raise(Exception('names argument must be list or tuple, but it is %s'
                            %type(names_father)))            
        print('father node is %d' %father_node)
        sons = self.succ[father_node]
        for name in names_father:
            print('    %s is %s' %(name, self.nodes[father_node][name]))
        print('all son nodes of %d' %father_node)
        for son in sons:
            self.print_node_attrs(son, names_son)
        

    