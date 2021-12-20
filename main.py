# -*- coding: utf-8 -*-
"""
Created on Mon May 24 10:57:00 2021

@author: zxz58
"""
# repeated times for each circuit
repeat_time = 5
# set objective to size (1) or depth (0)
opt_size = 1
# use remote CNOT?
use_remote = 0
# write results to excel file?
to_excel = 1
# use random (1) or the deterministic deterministic (0)
use_sim = 1
# invoke qiskit to draw the output circuit
draw_circuit = 0
# architecture graph generation control
# ['Grid 5X5'] ['IBM QX20'] ['IBM Rochester'] ['Grid 5X4'] ['Google Sycamore']
method_AG = ['IBM QX20']
# choose benchmark set
#'B114', 'B11', 'Breal' or 'Bran'
benchmark = 'B114' 
# only valid for Breal banchmark
# maximum and minimum allowed # qubits in the input circuits
ben_para = {'min_num_q': 1, 'max_num_q': 1} 


if use_sim == 0: repeat_time = 1

def QCT_MCTS(file, index, AG, sim_cpp):
    from cir_dg import DG
    import networkx as nx
    #from networkx import DiGraph, Graph
    import numpy as np
    import time
    from cir_gen.get_benchmarks import GetBenchmarks
    #from front_circuit import FrontCircuit
    from monte_carlo_tree import MCTree
    record_time = 0
    if len(AG) > 30:
        # for large AG
        selec_times = 50 # recommend:50 for realistic circuits
        select_mode = ['KS', 15]
        use_prune = 1
        use_hash = 1
    if len(AG) < 25:
        # for small AG
        selec_times = 30 # recommend:30
        select_mode = ['KS', 20]
        use_prune = 0
        use_hash = 1
    if len(AG) <= 30 and len(AG) >= 25:
        # for median AG
        selec_times = 40
        select_mode = ['KS', 20]
        use_prune = 0
        use_hash = 1
    times = []
    gate_nums = []
    time_sel = 0
    time_exp = 0
    time_sim = 0
    time_dec = 0
    # init objective
    if opt_size == 1:
        objective = 'size'
    else:
        objective = 'depth'
    if use_sim == 0:
        score_layer = 5
    else:
        score_layer = 0
    # generate dependency graph
    dg = DG()
    dg.from_qasm(file)
    num_gate_in = dg.num_gate
    # init search tree
    search_tree = MCTree(AG, dg,
                         sim_function=sim_cpp,
                         objective=objective,
                         use_remote=use_remote,
                         select_mode=select_mode,
                         score_layer=score_layer,
                         use_prune=use_prune,
                         use_hash=use_hash,)
    # MCT search process
    t_start = time.time()
    while search_tree.nodes[search_tree.root_node]['num_remain_gates'] > 0:
        #for _ in range(selec_times):
        while search_tree.selec_count < selec_times:
            # selection
            if record_time == 1: tt = time.time()
            exp_node, _ = search_tree.selection()
            if record_time == 1: time_sel += time.time() - tt
            # EXP
            if record_time == 1: tt = time.time()
            search_tree.expansion(exp_node)
            if record_time == 1: time_exp += time.time() - tt
            # simulation
            if use_sim and exp_node in search_tree.nodes:
                # due to hash detection, the expanded node may be removed
                # if all its sons have alread existed
                if record_time == 1: tt = time.time()
                search_tree.simultation(exp_node)
                if record_time == 1: time_sim += time.time() - tt
        # decision
        if record_time == 1: tt = time.time()
        search_tree.decision()
        if record_time == 1: time_dec += time.time() - tt
    t_end = time.time()
    # print result
    if draw_circuit: search_tree.print_phy_circuit()
    res_gate_add = search_tree.nodes[search_tree.root_node]['num_add_gates']
    res_depth_total = search_tree.nodes[search_tree.root_node]['depth']
    res_gate_total = num_gate_in + res_gate_add
    res_time = t_end - t_start
    print('circuit name is', file)
    print('Number of added SWAPs is', res_gate_add/3)
    print('Number of added gates is', res_gate_add)
    print('Number of all gates is', res_gate_total)
    print('Output depth is', res_depth_total)
    print('Total time is', res_time)
    print('Size of tree is', search_tree.node_count)
    if record_time == 1:
        print('Time for selection is', time_sel)
        print('Time for expansion is', time_exp)
        print('Time for simulation is', time_sim)
        print('Time for decision is', time_dec)
    print('----------------------')
    print()
    return index, res_gate_total, res_time, res_depth_total

if __name__ == '__main__':
    import networkx as nx
    import numpy as np
    import time
    from cir_gen.get_benchmarks import GetBenchmarks
    from cir_gen.ag import GenerateArchitectureGraph
    from monte_carlo_tree import MCTree
    
    file_suffix = benchmark
    #mode for search
    mode = ['fix play', None]
    print('AG', method_AG)
    print('opt_size?', opt_size)
    print('use_remote?', use_remote)
    print('use_simulation?', use_sim)
    print('benchmark set', benchmark)
    # function for simulation
    if use_sim:
        if opt_size == 1:
            from simulation.get_sim_func import get_sim_function
            sim_cpp = get_sim_function(method_AG)
        else:
            from simulation.get_sim_func import get_sim_function_depth
            sim_cpp = get_sim_function_depth(method_AG)
    else:
        sim_cpp = None
    
    '''generate architecture graph'''
    '''q0 - v0, q1 - v1, ...'''
    print('AG is', method_AG)
    AG = GenerateArchitectureGraph(method_AG)
    num_q_phy = len(AG)
    
    # realistic circuits
    QASM_file = GetBenchmarks(benchmark, ben_para)
    
    #QASM_file = ['rd84_253.qasm'] #test/210.qasm
    #QASM_file = QASM_file[:2] #[:110]
    print('# circuits is', len(QASM_file))
    print(QASM_file)
    
    results = {'circuit_names': QASM_file,
               'min_gate_num': np.zeros(len(QASM_file)),
               'ave_gate_num': np.zeros(len(QASM_file)),
               'min_depth': np.zeros(len(QASM_file)),
               'ave_depth': np.zeros(len(QASM_file)),
               'time': np.zeros(len(QASM_file))}
    
    QASM_files = []
    indices = []
    i = -1
    for file in QASM_file:
        i += 1
        QASM_files.extend([file]*repeat_time)
        indices.extend([i]*repeat_time)
        
    num_trial = len(QASM_files)
    ress = map(QCT_MCTS,
               QASM_files,
               indices,
               [AG]*num_trial,
               [sim_cpp]*num_trial,)
    key_para = 'min_gate_num' if opt_size else 'min_depth'
    for res in ress:
        i, res_gate_total, res_time, res_depth = res
        results['ave_gate_num'][i] += res_gate_total
        results['ave_depth'][i] += res_depth
        current_score = res_gate_total if opt_size else res_depth
        if (current_score < results[key_para][i] or
            results[key_para][i] == 0):
            results['min_gate_num'][i] = res_gate_total
            results['min_depth'][i] = res_depth
        if (res_time < results['time'][i] or
            results['time'][i] == 0):
            results['time'][i] = res_time
    for i in range(len(QASM_file)):
        results['ave_gate_num'][i] /= repeat_time
        results['ave_depth'][i] /= repeat_time
    if to_excel == 1:
        from write_to_files import write_to_excel
        item_names = ['circuit_names',
                      'min_gate_num',
                      'ave_gate_num',
                      'min_depth',
                      'ave_depth',
                      'time']
        opt_target = 'size' if opt_size == 1 else 'depth'
        remote_info = 'remote' if use_remote == 1 else ''
        sim_info = 'sim' if use_sim == 1 else ''
        write_to_excel('MCTS_{}_{}_{}_{}_{}.csv'.format(method_AG[0], file_suffix, 
                                                               opt_target, remote_info,
                                                               sim_info),
                       results, item_names)
