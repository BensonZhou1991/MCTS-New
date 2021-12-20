# -*- coding: utf-8 -*-
"""
Created on Sat Jul 25 15:24:39 2020

@author: zxz58
"""
import numpy as np

import circuittransform as ct
method_AG = ['IBM Rochester']
AG = ct.GenerateArchitectureGraph(method_AG)

def GenQasmRandomly(num_file, num_qubit, num_cx, path, start_num=0):
    '''Generate QASM with only CNOT'''
    for i in range(num_file):
        full_path = path + str(start_num+i) + '.qasm'
        print('\rGenerating %d of %d file' %(i+1, num_file), end='')
        with open(full_path, 'w') as f:
            f.write('OPENQASM 2.0;\ninclude "qelib1.inc";')
            f.write('\nqreg q[' + str(num_qubit) + '];')
            f.write('\ncreg c[' + str(num_qubit) + '];')
            for _ in range(num_cx):
                cx1 = str(np.random.randint(num_qubit))
                cx2 = str(np.random.randint(num_qubit))
                while cx2 == cx1 or AG.shortest_length[int(cx1)][int(cx2)] > 5: 
                    cx2 = str(np.random.randint(num_qubit))
                f.write('\ncx q[' + cx1 + '],q[' + cx2 + '];')
                
def GenQasmRandomly2(num_file, num_qubit, num_gates, path,
                     single_gates):
    '''Generate QASM with CNOT and single-qubit and non-parameter gate'''
    num_gate_type = len(single_gates) + 1
    file_name = str(num_qubit) + '_qubits_' + str(num_gates) + '_gates'
    for i in range(num_file):
        full_path = path + file_name + '_' + str(i) + '.qasm'
        print('\rGenerating %d of %d file' %(i+1, num_file), end='')
        with open(full_path, 'w') as f:
            f.write('OPENQASM 2.0;\ninclude "qelib1.inc";')
            f.write('\nqreg q[' + str(num_qubit) + '];')
            f.write('\ncreg c[' + str(num_qubit) + '];')
# =============================================================================
#             for q_current in range(num_qubit):
#                 '''we gen H for the first gate of each qubut'''
#                 f.write('\nh' + ' q[' + str(q_current) + '];')
# =============================================================================
            for _ in range(num_gates):
                gate_type = np.random.randint(num_gate_type)
                if gate_type == len(single_gates):
                    # CNOT gate
                    cx1 = str(np.random.randint(num_qubit))
                    cx2 = str(np.random.randint(num_qubit))
                    while cx2 == cx1: cx2 = str(np.random.randint(num_qubit))
                    f.write('\ncx q[' + cx1 + '],q[' + cx2 + '];')
                else:
                    # single-qubit gate
                    q_index = str(np.random.randint(num_qubit))
                    f.write('\n' + single_gates[gate_type] + ' q[' + q_index + '];')
            f.write('\n')
            
def GenQasmRandomly3(num_file, num_qubit, num_layers, path,
                     single_gates):
    '''
    Generate QASM with CNOT and single-qubit and non-parameter gate in a
    specific circuit pattern
    '''
    num_gate_type = len(single_gates)
    file_name = str(num_qubit) + '_qubits_' + str(num_layers) + '_layers'
    flag_cx_odd = 0
    for i in range(num_file):
        full_path = path + file_name + '_' + str(i) + '.qasm'
        print('\rGenerating %d of %d file' %(i+1, num_file), end='')
        with open(full_path, 'w') as f:
            f.write('OPENQASM 2.0;\ninclude "qelib1.inc";')
            f.write('\nqreg q[' + str(num_qubit) + '];')
            f.write('\ncreg c[' + str(num_qubit) + '];')
            for _ in range(num_layers):
                # single-qubit gate
                for q_index in range(num_qubit):
                    gate_type = np.random.randint(num_gate_type)
                    f.write('\n' + single_gates[gate_type] + ' q[' + str(q_index) + '];')
                # CNOT gate
                current_q_cx = flag_cx_odd + 1
                while current_q_cx <= num_qubit-1:
                    cx1 = str(current_q_cx - 1)
                    cx2 = str(current_q_cx)
                    f.write('\ncx q[' + cx1 + '],q[' + cx2 + '];')
                    current_q_cx += 2
                flag_cx_odd = 1 - flag_cx_odd
            f.write('\n')
        
if __name__ == '__main__':
    # QASM with only CNOT
    path = 'D:/data/'
    start_num = -1
    for num_qubit in [53]:#[6]:
        for num_cx in [100]:
            for cir_num in range(10):
                start_num +=1
                GenQasmRandomly(num_file=1, num_qubit=num_qubit, num_cx=num_cx,
                                path=path, start_num=start_num)
    # QASM with signle-qubit gates
# =============================================================================
#     start_num = -1
#     for num_qubit in [10]:
#         for num_layers in range(2,20,1):
#             GenQasmRandomly3(num_file=5, num_qubit=num_qubit,
#                              num_layers = num_layers,
#                              path='temp/',
#                              single_gates=['h', 't', 's'])
# =============================================================================
