# -*- coding: utf-8 -*-
"""
Created on Wed Jun  2 22:15:25 2021

@author: Xiangzhen Zhou

Basic methods for simulation via a seprate search tree

    We use offset and flip to normalize the circuit
    We move nodes which have been simulated for sufficient # times to a dictionary
    to save memory and this dict can be shared during various MCTS processes.
"""
import networkx as nx
from networkx import DiGraph
import numpy as np
import time
import matplotlib.pyplot as plt
from front_circuit import FrontCircuit

flag_cir_norm = 1
hash_check = 0
init_num_swap = -100

'''
default select_mode specifies the mode for evaluation during selection
'''
_select_mode_ = ['KS', 20] #['KS', 20]


class SimTree(DiGraph):
    def __init__(self, AG, mode_sim=[100, 10, {}]):
        '''
        swap_combination is a list of swaps to be considered
        T: ratio for node evaluation
        node_count: index for newly added node
        '''
        super().__init__()
        # check key words\
        # set parameters
        #self.use_remote = use_remote
        self.node_count = 0
        self.AG = AG
        self.num_q = len(AG)
        self.shortest_length_AG = AG.shortest_length
        self.shortest_path_AG = AG.shortest_path
        self.max_length = nx.diameter(AG)
        self.add_count = 0
        self.hit_count = 0
        self.hit_count_hash = 0
        self.select_mode = _select_mode_.copy()
        self.mode_sim = mode_sim
        self.max_sim_time = mode_sim[0] / mode_sim[1]
        self.finish_node = mode_sim[2]
        if flag_cir_norm == 1: self.add_info_grid_DG()
        
    def add_info_grid_DG(self):
        AG = self.AG
        #nx.draw(AG)
        # find datum_point (left top node in AG)
        datum_point = 10000000
        for node in AG.nodes:
            if AG.degree(node) == 2:
                if node < datum_point: datum_point = node
        # find top right node
        dis_tp = 10000000
        for node in AG.nodes:
            if AG.degree(node) == 2:
                dis = self.shortest_length_AG[node][datum_point]
                if dis > 0 and dis < dis_tp:
                    dis_tp = dis
                    top_right = node
        # find bottom left node
        dis_bl = 10000000
        for node in AG.nodes:
            if AG.degree(node) == 2:
                dis = self.shortest_length_AG[node][datum_point]
                if dis >= dis_tp and dis < dis_bl and node != top_right:
                    dis_bl = dis
                    bot_left = node
        # add coordinates
        AG.pos_to_node = {}
        width1 = self.shortest_length_AG[top_right][datum_point]
        width2 = self.shortest_length_AG[bot_left][datum_point]
        for node in AG.nodes:
            d0 = self.shortest_length_AG[node][datum_point]
            d1 = self.shortest_length_AG[node][top_right]
            d2 = self.shortest_length_AG[node][bot_left]
            x = int((d0 + d1 - width1) / 2)
            y = int((d0 + d2 - width2) / 2)
            AG.nodes[node]['pos'] = (x, y)
            AG.pos_to_node[(x, y)] = node
    
    def cir_normalize(self, circuit):
        ''' normalize a circuit '''
        if circuit.num_gates == 0: return None
        cir = circuit.cir
        cir_m = np.empty((circuit.num_gates*2, 2))
        # find the minimum x and y coordinates in qubit in the circuit
        i = 0
        num_gates_l = []
        for cir_l in cir:
            num_l = 0
            for q0, q1 in cir_l:
                num_l += 1
                pos0 = self.AG.nodes[q0]['pos']
                pos1 = self.AG.nodes[q1]['pos']
                cir_m[i] = pos0
                cir_m[i+1] = pos1
                i += 2
            num_gates_l.append(num_l)
        x_min, y_min = np.min(cir_m, 0)
        x_max, y_max = np.max(cir_m, 0)
        # find centre point
        corners = np.array([[x_min, y_min], [x_max, y_min],
                            [x_min, y_max], [x_max, y_max],])
        centre = np.average(cir_m, 0)
        # find location (phase) of the centre
        dis = np.sum(np.abs(centre - corners), 1)
        phase = np.argmin(dis)
        # flip the whole circuit matrix to make centre locate at the 1st phase
        if phase == 0 and x_min == 0 and y_min == 0: return None
        if phase == 1: cir_m = cir_m * (-1, 1)
        if phase == 2: cir_m = cir_m * (1, -1)
        if phase == 3: cir_m = cir_m * (-1, -1)
        # offset the circuit
        cir_m = cir_m - np.min(cir_m, 0)
        # get normalized circuit gate by gate
        cir_norm = []
        i = 0
        for i_level in range(len(num_gates_l)):
            cir_norm_l = []
            for _ in range(num_gates_l[i_level]):
                # add one gate
                q0, q1 = (self.AG.pos_to_node[tuple(cir_m[i])],
                          self.AG.pos_to_node[tuple(cir_m[i+1])])
                if q0 < q1:
                    cir_norm_l.append((q0, q1))
                else:
                    cir_norm_l.append((q1, q0))
                i += 2
            cir_norm_l.sort()
            cir_norm.append(cir_norm_l)
        circuit.cir = cir_norm
                
    def add_node(self, father, cir):
        '''
        circuit
        sim_time
        min_swap
        num_gates
        p_swaps: pertinent swaps list
        finish: whether this node is finished?
        p_swap_flag:
            whether corresponding swaps have been added?
            -1: not added otherwise hash value of the circuit in the added node
        '''
        if flag_cir_norm: self.cir_normalize(cir)
        node = hash(cir)
        if not node in self.nodes:
            if node in self.finish_node:
                # already finish simulation
                self.hit_count_hash += 1
                return node
            # this node has never been opened before
            self.add_count += 1
            if cir.num_gates <= 1:
                # the minimum # swaps is determined
                if cir.num_gates == 1:
                    q0, q1 = cir.cir[0][0]
                    self.finish_node[node] = self.shortest_length_AG[q0][q1] - 1
                else:
                    self.finish_node[node] = 0
                
            else:
                self.add_nodes_from([node])
                self.nodes[node]['circuit'] = cir
                self.nodes[node]['sim_time'] = 0
                self.nodes[node]['num_gates'] = cir.num_gates
                self.nodes[node]['min_swap'] = init_num_swap
                self.nodes[node]['p_swaps'] = cir.pertinent_swaps(self.AG,
                                                       self.shortest_length_AG)
                self.nodes[node]['p_swap_flag'] = [-1] * \
                                                  len(self.nodes[node]['p_swaps'])
        else:
            if hash_check:
                if cir.cir != self.nodes[node]['circuit'].cir: raise()
            self.hit_count_hash += 1
        if father != None: self.add_edge(father, node)
        return node
    
    def expand_node_via_swap(self, node, i):
        if self.nodes[node]['p_swap_flag'][i] != -1:
            # already exist?
            added_node = self.nodes[node]['p_swap_flag'][i]
            self.hit_count += 1
        else:
            # get new circuit
            swap = self.nodes[node]['p_swaps'][i]
            cir_new = self.nodes[node]['circuit'].copy()
            cir_new.execute_swap(swap, self.AG)
            # add node
            added_node = self.add_node(node, cir_new)
            # update father's parameter
            self.nodes[node]['p_swap_flag'][i] = added_node
        return added_node

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
    
    def pick_son_random(self, node):
        p_swaps = self.nodes[node]['p_swaps']
        num_son = len(p_swaps)
        i = np.random.randint(num_son)
        return self.expand_node_via_swap(node, i)
    
    def pick_son_best(self, node):
        best_value = 100000
        for i in range(len(self.nodes[node]['p_swap_flag'])):
            son = self.nodes[node]['p_swap_flag'][i]
            swap = self.nodes[node]['p_swaps'][i]
            if son == -1: continue
            value = self.nodes[son]['min_swap']
            if value < best_value and value != init_num_swap:
                best_son = son
                bset_swap = swap
                best_value = value
                
        return best_son, bset_swap

    def simulate(self, cir, sim_times):
        start_node = self.add_node(None, cir)
        for _ in range(sim_times):   
            self.simulate_recur(start_node)
        if start_node in self.finish_node:
            return self.finish_node[start_node]
        else:
            return self.nodes[start_node]['min_swap']
    
    def simulate_recur(self, node):
        if node in self.finish_node:
            # already finished
            num_swap = self.finish_node[node]
        else:
            node_next = self.pick_son_random(node) # pick and open new node
            num_swap = self.simulate_recur(node_next) + 1
            if (num_swap < self.nodes[node]['min_swap'] or
                self.nodes[node]['min_swap'] == init_num_swap):
                # the new result is better
                self.nodes[node]['min_swap'] = num_swap
            else:
                # the old result is better
                num_swap = self.nodes[node]['min_swap']
            self.nodes[node]['sim_time'] += 1
            # if this node has been simulated for sufficient # times
            if self.nodes[node]['sim_time'] > \
               (self.nodes[node]['num_gates'] * self.max_sim_time):
                   self.finish_node[node] = self.nodes[node]['min_swap']
                   self.remove_node(node)
        return num_swap

    def delete_nodes(self, nodes):
        '''delete nodes and all its successors'''
        for node in nodes:
            '''delete'''
            T_succ = nx.dfs_tree(self, node)
            self.remove_nodes_from(T_succ.nodes)
            
        
    def print_swaps(self):
        node = self.init_node
        swaps = []
        while self.out_degree(node) > 0:
            if self.out_degree(node) > 1: raise()
            node = list(self.successors(node))[0]
            swaps.append(self.nodes[node]['added_swap'])
        print(swaps)
        
    def print_cir(self, cir):
        self.cir_normalize(cir)
        root = hash(cir)
        if not root in self.nodes: raise()
        node = root
        print(self.nodes[node]['circuit'].cir)
        while self.out_degree(node) > 0:
            node, swap = self.pick_son_best(node)
            print('add swap', swap)
            print('%d gates left' %self.nodes[node]['num_gates'])
            print(self.nodes[node]['circuit'].cir)
        
    def print_node_args(self, node, names=['added_swap', 'local_score']):
        print('  node %d' %node)
        for name in names:
            print('    %s is %s' %(name, self.nodes[node][name]))
    
    def PrintSonNodesArgs(self, father_node, names_son, names_father=[]):
        if not isinstance(names_son, list) and not isinstance(names_son, tuple):
            raise(Exception('names argument must be list or tuple, but it is %s'
                            %type(names_son)))
        if not isinstance(names_father, list) and not isinstance(names_father, tuple):
            raise(Exception('names argument must be list or tuple, but it is %s'
                            %type(names_father)))            
        print('father node is %d' %father_node)
        sons = self.nodes[father_node]['son_nodes']
        for name in names_father:
            print('    %s is %s' %(name, self.nodes[father_node][name]))
        print('all son nodes of %d' %father_node)
        for son in sons:
            self.PrintNodeArgs(son, names_son)
        
    def DrawLogData(self):
        for key in self.log.keys():
            if key == 'swap_vs_cx':
                plt.plot(self.log[key][9:])
            else:
                plt.plot(self.log[key])
            plt.legend()
            plt.grid()
            plt.title(key)
            plt.show()
    
    @property
    def hit_rate(self):
        r1 = (self.hit_count + self.hit_count_hash) / (self.hit_count + self.hit_count_hash + self.add_count)
        r2 = (self.hit_count_hash) / (self.hit_count + self.hit_count_hash + self.add_count)
        return r1, r2