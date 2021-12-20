# -*- coding: utf-8 -*-
"""
Created on Thu Jun  3 03:47:38 2021

@author: Xiangzhen Zhou
"""
import networkx as nx
from networkx import DiGraph

class SimCir(DiGraph):
    def __init__(self, cir):
        self.cir = cir
        self.num_gates = 0
        for cir_l in cir: self.num_gates += len(cir_l)
        
    def to_tuple(self):
        cir_list = []
        for cir_l in self.cir:
            for gate in cir_l:
                cir_list.append(gate)
        return tuple(cir_list)
    
    def __hash__(self):
        return hash(self.to_tuple())
    
    def print(self):
        print(self.cir)
    
    def copy(self):
        new_cir = []
        for cir_l in self.cir: new_cir.append(cir_l.copy())
        return SimCir(new_cir)
    
    def pertinent_swaps(self, AG, shortest_length_AG):
        '''find swaps with maximum h score'''
        qubits = []
        qubits_other = [-1] * len(AG)
        for q0, q1 in self.cir[0]:
            qubits.append(q0)
            qubits.append(q1)
            qubits_other[q0] = q1
            qubits_other[q1] = q0
        score_max = -10
        pertinent_swaps = []
        for swap in AG.edges:
            q0, q1 = swap
            h_score = 0
            flag = False # is relevant?
            if q0 in qubits:
                flag = True
                q_other = qubits_other[q0]
                h_score += shortest_length_AG[q0][q_other] - \
                           shortest_length_AG[q1][q_other]
            if q1 in qubits:
                flag = True
                q_other = qubits_other[q1]
                h_score += shortest_length_AG[q1][q_other] - \
                           shortest_length_AG[q0][q_other]
            if flag == True:
                if h_score > score_max:
                    pertinent_swaps = [swap]
                    score_max = h_score
                else:
                    if h_score == score_max:
                        pertinent_swaps.append(swap)
        return pertinent_swaps
    
    def update_layers(self):
        '''we only update layers and do not execute gates and sort gates'''
        l = 0
        while l < (len(self.cir) - 1):
            qubits = []
            for cx in self.cir[l]: qubits.extend(cx)
            gates_next = self.cir[l+1]
            move_cx = []
            for cx in gates_next:
                if not cx[0] in qubits and not cx[1] in qubits:
                    move_cx.append(cx)
            if len(move_cx) > 0:
                for cx in move_cx:
                    self.cir[l].append(cx)
                    self.cir[l+1].remove(cx)
            else:
                break
            # go to next layer
            l += 1
            
    
    def execute_cnot(self, AG):
        while True:
            # execute gates in the front layer
            exe_cx = []
            for cx in self.cir[0]:
                if cx in AG.edges(): exe_cx.append(cx)
            if len(exe_cx) > 0:
                # execute cx
                for cx in exe_cx: self.cir[0].remove(cx)
                self.update_layers()
                self.num_gates -= len(exe_cx)
            else:
                break
                    
    def sort_gates(self):
        # delete empty layers
        if self.num_gates == 0:
            self.cir = [[]]
            return None
        while len(self.cir[-1]) == 0:
            self.cir.pop(-1)
        # resort all layers
        for cir_l in self.cir:
            cir_l.sort()
        
    def execute_swap(self, swap, AG):
        for cir_l in self.cir:
            cx_remove = []
            cx_add = []
            for cx in cir_l:
                q0, q1 = cx
                flag = False
                if cx[0] == swap[0]:
                    q0 = swap[1]
                    flag = True
                if cx[0] == swap[1]: 
                    q0 = swap[0]
                    flag = True
                if cx[1] == swap[0]: 
                    q1 = swap[1]
                    flag = True
                if cx[1] == swap[1]: 
                    q1 = swap[0]
                    flag = True
                if flag == True:
                    cx_remove.append(cx)
                    cx_add.append((q0, q1))
            for cx_ad, cx_rem in zip(cx_add, cx_remove):
                cir_l.remove(cx_rem)
                cir_l.append(cx_ad)
        self.execute_cnot(AG)
        self.sort_gates()
        
    def simplify(self):
        pass