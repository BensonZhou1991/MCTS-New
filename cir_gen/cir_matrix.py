from qiskit import QuantumCircuit, QuantumRegister
from cir_gen.dg import QiskitCircuitToDG
import numpy as np
from front_circuit import FrontCircuit

def gen_cir_matrix(num_cir, AG, num_layer):
    '''
    generate data set for specific number of CNOT gates and generate labels
    according to the global scores in children of the first root node
    This module will use the whole AG to generate gates based on this subgraph.
    It will exclude the executable gates in the first layer
    Return:
        circuits: np arrays for all cx gates in each circuit
        scores: global scores of each SWAP for each random circuit
    '''
        
    num_swap = len(AG.edges())
    num_q = len(AG)
    # Gen CNOT gates
    circuits = np.zeros((num_cir, num_layer, num_q, num_q))
    # physical qubits to layer and circuits and cnot lists for all circuits
    q_to_layer = [0] * num_q
    q_to_cir = [0] * num_q
    while max(q_to_cir) < num_cir:
        flag = True
        while flag:
            # gen CX
            cx_add = np.random.choice(num_q, 2)
            while cx_add[0] == cx_add[1]:
                cx_add = np.random.choice(num_q, 2)
            # Find the circuit and layer that this cx will be added to
            cir_adds = q_to_cir[cx_add[0]], q_to_cir[cx_add[1]]
            layer_adds = q_to_layer[cx_add[0]], q_to_layer[cx_add[1]]
            if cir_adds[0] == cir_adds[1]:
                cir_add = cir_adds[0]
                layer_add = max(layer_adds)
            if cir_adds[0] > cir_adds[1]:
                cir_add = cir_adds[0]
                layer_add = layer_adds[0]
            if cir_adds[0] < cir_adds[1]:
                cir_add = cir_adds[1]
                layer_add = layer_adds[1]
            # exclude the executable CNOT in the first layer
            if layer_add == 0:
                # first layer CNOT
                # check executalbe
                flag = True if cx_add in AG.edges() else False
            else:
                flag = False
        # add cx to the circuit and cx list
        circuits[cir_add][layer_add][cx_add[0]][cx_add[1]] += 1
        circuits[cir_add][layer_add][cx_add[1]][cx_add[0]] += 1
        if circuits[cir_add][layer_add][cx_add[1]][cx_add[0]] > 1:
            raise(Exception('error CNOT %s' %cx_add))
        # update the next circuit and layer of qubits
        layer_next = layer_add + 1
        cir_next = cir_add
        if layer_next == num_layer:
            layer_next = 0
            cir_next += 1
        q_to_layer[cx_add[0]] = layer_next
        q_to_layer[cx_add[1]] = layer_next
        q_to_cir[cx_add[0]] = cir_next
        q_to_cir[cx_add[1]] = cir_next
    return circuits

def cir_matrix_2_dg(cir_m):
    num_q = cir_m.shape[-1]
    # create qiskit circuit
    cir = QuantumCircuit(QuantumRegister(num_q))
    for layer in cir_m:
        for q0 in range(num_q):
            for q1 in range(q0+1, num_q):
                if layer[q0][q1] == 1: cir.cx(q0, q1)
    res = QiskitCircuitToDG(cir)
    DG = res[0]
    return DG

def front_cir_to_matrix(cir, num_layer):
    cir_m = np.zeros((num_layer, len(cir.AG), len(cir.AG)))
    layer = 0
    while len(cir.front_layer) > 0:
        for node_dg in cir.front_layer:
            q0, q1 = cir.DG.nodes[node_dg]['operand']
            cir_m[layer][q0][q1] = 1
            cir_m[layer][q1][q0] = 1
        cir.execute_front_layer()
        layer += 1  
    return cir_m

def execute_cir_matrix(cir_m, AG):
    '''Execute all executable gates in a circuit matrix'''
    if len(cir_m.shape) != 3: raise()
    num_layer = cir_m.shape[0]
    DG = cir_matrix_2_dg(cir_m)
    cir = FrontCircuit(DG, AG)
    cir.assian_mapping_naive()
    cir.execute_gates()
    return front_cir_to_matrix(cir, num_layer)

def gen_cir_matrix_from_list(cx_list, num_q, num_layer):
    '''
    create a numpy matrix to represent the circuit with multi-layers containing
    only CNOT gates
    input:
        num_q_log -> total number of qubits. E.g., 4
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
    cir_map = np.zeros([num_layer, num_q, num_q]).astype(np.float32)
    qubit_usage = [0]*num_q
    for CNOT in cx_list:
        q_c = int(CNOT[0])
        q_t = int(CNOT[1])
        '''check the number of layer'''
        l1 = qubit_usage[q_c]
        l2 = qubit_usage[q_t]
        layer = max(l1, l2)
        '''renew map data'''
        cir_map[layer][q_c][q_t] += 1
        cir_map[layer][q_t][q_c] += 1
        '''renew qubit usage'''
        qubit_usage[q_c] = layer + 1
        qubit_usage[q_t] = layer + 1
    return cir_map

def swap_matrix(swap, num_q):
    q0, q1 = swap
    left_m, right_m = np.eye(num_q), np.eye(num_q)
    right_m[q0][q0], right_m[q1][q1] = 0, 0
    right_m[q0][q1], right_m[q1][q0] = 1, 1
    left_m[q0][q0], left_m[q1][q1] = 0, 0
    left_m[q0][q1], left_m[q1][q0] = 1, 1
    return left_m, right_m

def distance_mask_ag(AG):
    '''
    Return a matrix the entries of which represent the (# distance -1) of two
    qubits.
    '''
    distance_mask = np.empty((len(AG), len(AG)))
    for q0 in range(len(AG)):
        for q1 in range(len(AG)):
            distance_mask[q0][q1] = AG.shortest_length[q0][q1] - 1
            if distance_mask[q0][q1] < 0: distance_mask[q0][q1] = 0
    return distance_mask * 3

if __name__ == '__main__':
    cir_m = np.zeros((2, 4, 4))
    cir_m[1][1][2], cir_m[1][2][1], cir_m[1][1][3], cir_m[1][3][1] = 1, 1, 1, 1
    left_m, right_m = swap_matrix((1, 0), 4)
    cir_m0 = np.tensordot(left_m, cir_m, axes=((1),(1))).swapaxes(0,1)
    cir_m1 = np.tensordot(cir_m0, right_m, axes=((2),(0)))