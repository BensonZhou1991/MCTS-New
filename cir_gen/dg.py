# -*- coding: utf-8 -*-
"""
Created on Fri Jul 23 13:24:53 2021

@author: zhoux
"""
from qiskit import QuantumCircuit
from qiskit.circuit.quantumregister import Qubit
import networkx as nx

def OperationToDependencyGraph(operations):
    '''
    create dependency graph
    input:
        operations a list of all operations instances
    '''
    # a list in which each element is the node that takes the first place of 
    # qubits
    first_gates = [-1]*500
    current_nodes = [-1]*500
    
    i = -1
    DG = nx.DiGraph()
    num_q_log = 0
    # number of single-qubit gate befor the first CX layer
    # each element corresponds to a logical qubit
    DG.num_single_gates_before_first_layer = [0]*500
    for current_operation in operations:
        i += 1
        qubits = current_operation.InvolveQubitsList()
        if len(qubits) == 1:
            qubit = qubits[0]
            if current_nodes[qubit] == -1:
                DG.num_single_gates_before_first_layer[qubit] += 1
            else:
                if qubit == DG.nodes[current_nodes[qubit]]['operand'][0]:
                    DG.nodes[current_nodes[qubit]]['num_single_q_gates0'] += 1
                else:
                    if qubit == DG.nodes[current_nodes[qubit]]['operand'][1]:
                        DG.nodes[current_nodes[qubit]]['num_single_q_gates1'] += 1
                    else:
                        raise(Exception('Illegal qubit index.'))
        if len(qubits) == 2:
            edges = []
            for qubit in qubits:
                if first_gates[qubit] == -1: first_gates[qubit] = i
                if current_nodes[qubit] != -1:
                    edges.append((current_nodes[qubit], i))
                if qubit + 1 > num_q_log: num_q_log = qubit + 1
                current_nodes[qubit] = i
            DG.add_node(i,
                        operation=current_operation,
                        operand=current_operation.involve_qubits_list,
                        num_single_q_gates0=0,
                        num_single_q_gates1=0)
            if current_operation.dependent_operations != []:
                DG.add_node(i, root = False)
                for edge in edges:
                    DG.add_edge(edge[0], edge[1])
            else:
                DG.add_node(i, root = True)
        if len(qubits) > 2:
            raise(Exception('Qubit number of a gate is more than 3.'))
    DG.first_gates = first_gates
    DG.num_q_log = num_q_log
    return DG

def GenerateDependency(operations, num_q):
    '''Generate Dependency to operations according to the order'''
    dic = {}
    for i in range(num_q):
        dic[i] = None
    
    for operation in operations:
        qubits = operation.involve_qubits
        for q in qubits:
            if isinstance(q, int):
                q_index = q
            else:
                q_index = q.index
            if dic[q_index] == None:
                dic[q_index] = operation
            else:
                dependent_operation = dic[q_index]
                if not dependent_operation in operation.dependent_operations:
                    operation.dependent_operations.append(dependent_operation)
                dic[q_index] = operation

class OperationU(object):
    '''
    Unitary operation
    '''
    
    instances_count = 0
    
    def __init__(self, qbits, name, d_o=[], time_cost=1):
        '''
        qbits: list of all input qubits
        name: name of operation, i.e., CX...
        d_qs: list of dependent operations
        '''
        self.involve_qubits = qbits
        self.input_qubits = self.involve_qubits
        self.involve_qubits_list = []
        self.name = name
        for q in qbits:
            if isinstance(q, int):
                q_index = q
            else:
                q_index = int(q.index)
            self.involve_qubits_list.append(q_index)
        self.dependent_operations = list(set(d_o))
        self.DeleteRedundantDependentOperation()
        # whether this instance is conducted in QPU
        self.conducted = False
        self.time_cost = time_cost
        self._RefreshDependencySet()
        OperationU.instances_count = OperationU.instances_count + 1
        
    def _RefreshDependencySet(self):
        self.dependency_set = []
        if self.dependent_operations != []:
            for dependent_operation in self.dependent_operations:
                self.dependency_set.extend(dependent_operation.dependency_set)
                self.dependency_set.append(dependent_operation)
        # remove reduplicative elements
        self.dependency_set = list(set(self.dependency_set))
    
    def DeleteRedundantDependentOperation(self):
        '''
        delete some dependent operations that already have dependent relationship
        '''
        if self.dependent_operations != []:
            for current_operation in self.dependent_operations:
                flag = False
                for test_operation in self.dependent_operations:
                    if current_operation in test_operation.dependency_set:
                        flag = True
                        break
                if flag == True:
                    self.dependent_operations.remove(current_operation)
        
    def CheckImplementation(self):
        '''
        check whether this operation is ready to be conducted, i.e.,
        all its dependent_operations have been conducted
        Return:
            True: this operation can be implemented
        '''
        if self.dependent_operations == []:
            return True
        else:
            re = True
            for i in self.dependent_operations:
                re = re and i.conducted
            return re

    def ToTuple(self):
        return self.involve_qubits_list.copy()
    
    def InvolveQubitsList(self):
        return self.involve_qubits_list.copy()
    
    def ToPhyList(self, mapping):
        Log_list = self.InvolveQubitsList()
        phy_list = []
        for q_log in Log_list:
            phy_list.append(mapping.LogToPhy(q_log))
        return phy_list

class OperationSingle(OperationU):
    '''arbitrary single qubit operation, U3 in qiskit'''
    def __init__(self, q_in, para=None, name='single', d_o=[]):
        '''
        d_qs: list of dependent operations
        '''
        q_index = None
        if isinstance(q_in, Qubit): q_index = q_in.index
        if isinstance(q_in, list):
            if len(q_in) != 1:
                raise(Exception('number of input qubit is not 1'))
            else:
                q_index = q_in[0]
        if q_index == None:
            raise(Exception('unidentified input qubit type', type(q_in)))
        super().__init__([q_index], name, d_o)
        self.para = para

class OperationCNOT(OperationU):
    '''
    CNOT Unitary operation
    '''
    
    instances_count = 0
    
    def __init__(self, c_q, t_q, d_o=[]):
        '''
        d_qs: list of dependent operations
        '''
        self.control_qubit = c_q
        self.target_qubit = t_q
        super().__init__([c_q, t_q], 'CX', d_o, time_cost=10)
        OperationCNOT.instances_count = OperationCNOT.instances_count + 1
        
    def ConductOperation(self, cir):
        '''
        Perform operation in Quantum Circuit object Cir
        '''        
        cir.cx(self.control_qubit, self.target_qubit)
        
    def ConductOperationOutside(self, cir, q_c, q_t):
        '''
        Perform operation in other quantum quits
        '''             
        cir.cx(q_c, q_t)
        self.conducted = 1
        
    def CalSWAPCost(self, mapping, shortest_length_G_with4H):
        v_c = mapping.LogToPhy(self.control_qubit)
        v_t = mapping.LogToPhy(self.target_qubit)
        swap_cost = shortest_length_G_with4H[v_c][v_t] - 1
        return swap_cost

def QiskitGateToOperation(Gate, flag_single=False):
    '''
    ATTENTION: The input gate should only be cx or single-qubit gates
    convert a Qiskit Gate object to OperationU
    only support CNOT and single qubit gates
    flag_single: whether we should convert single qubit gate
    '''

    '''old qiskit version'''
# =============================================================================
#     if Gate.name == 'cx':
#         qargs = Gate.qargs
#         return OperationCNOT(qargs[0], qargs[1])
# =============================================================================
    '''new qiskit version'''
    if Gate[0].name == 'cx':
        qargs = Gate[1]
        return OperationCNOT(qargs[0], qargs[1])
    else:
        if flag_single == True:
            '''convert single-qbuit gate'''
            qargs = Gate[1]
            if len(qargs) == 1:
                return OperationSingle(q_in=qargs[0],
                                       para=Gate[0].params,
                                       name=Gate[0].name)       
    return None

def CreateCircuitFromQASM(file, path=None):
    #QASM_file = open('inputs/QASM example/' + file, 'r')
    if path == None:
        path = 'D:/data/QASM example/'
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

def QiskitCircuitToDG(cir, flag_single=False):
    '''
    convert Qiskit circuit to DG
    support only CNOT and single qubit gates
    flag_single: whether we should convert single qubit gate
    '''
    operations = []
    num_unidentified_gates = 0
    qregs = cir.qregs
    if len(qregs) > 1:
        raise Exception('quantum circuit has more than 1 quantum register')
    q = qregs[0]
    data = cir.data
    for gate in data:
        operation = QiskitGateToOperation(gate, flag_single)
        if operation == None:
            num_unidentified_gates += 1
            raise(Exception('Unsupported gate!'))
        else:
            operations.append(operation)
    GenerateDependency(operations, q.size)
    DG = OperationToDependencyGraph(operations)
    
    return DG, num_unidentified_gates, q, operations

def CreateDGfromQASMfile(QASM_file, path=None, flag_single=False):
    '''
    convert QASM file to cir and DG
    flag_single: whether we should convert single qubit gate
    output:
        circuit, (DG, num_unidentified_gates, quantum register, operations)
    '''
    cir = CreateCircuitFromQASM(QASM_file, path)
    res = QiskitCircuitToDG(cir, flag_single)
    return cir, res