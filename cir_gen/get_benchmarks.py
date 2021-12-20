# -*- coding: utf-8 -*-
"""
Created on Thu May 21 12:22:45 2020

@author: zxz58
"""
'''
Tan_UCLA_Q20:
    https://github.com/UCLA-VAST/QUEKO-benchmark
'''
import os

legal_names_benchmark = ['B114', 'B11', 'Bran', 'Breal']

def GetQASMAttribute(path):
    import re
    QASM_file = open(path, 'r')
    iter_f = iter(QASM_file)
    pattern_n_q = 'qreg (.+)\[([0-9]+)\]'
    num_q = -1
    info_dict = {}
    for line in iter_f: #遍历文件，一行行遍历，读取文本
        info = re.match(pattern_n_q, line, flags=0)
        if info != None:
            num_q = int(info.group(2))
            break
    QASM_file.close()
    if num_q == -1: raise()
    info_dict['num_q'] = num_q
    
    return info_dict


def GetBenchmarks(name, args={}):
    if not name in legal_names_benchmark and name[0] != '/':
        raise(Exception('Undefinded benchmark set ' + name))
    if not 'min_num_q' in args: args['min_num_q'] = -1
    if not 'max_num_q' in args: args['max_num_q'] = 9999999
    bench_mark = name
    
    if bench_mark[0] == '/':
        import os
        min_q = args['min_num_q']
        max_q = args['max_num_q']
        path = "qasm_circuits" + bench_mark 
        QASM_file = os.listdir(path)
        path_prefix = bench_mark
        QASM_file_final = []
        for i in range(len(QASM_file)):
            current_full_path = path + QASM_file[i]
            info_dict = GetQASMAttribute(current_full_path)
            num_q = info_dict['num_q']
            if (num_q >= min_q) and (num_q <= max_q):
                QASM_file_final.append(path_prefix+QASM_file[i])
        QASM_file = QASM_file_final
        return QASM_file
        
    if bench_mark == 'Bran':
        '''random circuits with 200 CX gates and incremantal qubit number'''
        import os
        min_q = args['min_num_q']
        max_q = args['max_num_q']
        path = "qasm_circuits/test/" 
        QASM_file = os.listdir(path)
        path_prefix = 'test/'
        QASM_file_final = []
        for i in range(len(QASM_file)):
            current_full_path = path + QASM_file[i]
            info_dict = GetQASMAttribute(current_full_path)
            num_q = info_dict['num_q']
            if (num_q >= min_q) and (num_q <= max_q):
                QASM_file_final.append(path_prefix+QASM_file[i])
        QASM_file = QASM_file_final
        return QASM_file
    
    '''papaer benchmark'''
    if bench_mark == 'B11':
        QASM_file = ['rd84_142.qasm',
        'adr4_197.qasm',
        'radd_250.qasm',
        'z4_268.qasm',
        'sym6_145.qasm',
        'misex1_241.qasm',
        'rd73_252.qasm',
        'cycle10_2_110.qasm',
        'square_root_7.qasm',
        'sqn_258.qasm',
        'rd84_253.qasm']
        return QASM_file
    
    '''Q20 Benchmark2'''
    if bench_mark == 'B114':
        QASM_file = ['graycode6_47.qasm',
        'xor5_254.qasm',
        'ex1_226.qasm',
        '4gt11_84.qasm',
        'ex-1_166.qasm',
        'ham3_102.qasm',
        '4mod5-v0_20.qasm',
        '4mod5-v1_22.qasm',
        'mod5d1_63.qasm',
        '4gt11_83.qasm',
        '4gt11_82.qasm',
        'rd32-v0_66.qasm',
        'mod5mils_65.qasm',
        '4mod5-v0_19.qasm',
        'rd32-v1_68.qasm',
        'alu-v0_27.qasm',
        '3_17_13.qasm',
        '4mod5-v1_24.qasm',
        'alu-v1_29.qasm',
        'alu-v1_28.qasm',
        'alu-v3_35.qasm',
        'alu-v2_33.qasm',
        'alu-v4_37.qasm',
        'miller_11.qasm',
        'decod24-v0_38.qasm',
        'alu-v3_34.qasm',
        'decod24-v2_43.qasm',
        'mod5d2_64.qasm',
        '4gt13_92.qasm',
        '4gt13-v1_93.qasm',
        'one-two-three-v2_100.qasm',
        '4mod5-v1_23.qasm',
        '4mod5-v0_18.qasm',
        'one-two-three-v3_101.qasm',
        '4mod5-bdd_287.qasm',
        'decod24-bdd_294.qasm',
        '4gt5_75.qasm',
        'alu-v0_26.qasm',
        'rd32_270.qasm',
        'alu-bdd_288.qasm',
        'decod24-v1_41.qasm',
        '4gt5_76.qasm',
        '4gt13_91.qasm',
        '4gt13_90.qasm',
        'alu-v4_36.qasm',
        '4gt5_77.qasm',
        'one-two-three-v1_99.qasm',
        'rd53_138.qasm',
        'one-two-three-v0_98.qasm',
        '4gt10-v1_81.qasm',
        'decod24-v3_45.qasm',
        'aj-e11_165.qasm',
        '4mod7-v0_94.qasm',
        'alu-v2_32.qasm',
        '4mod7-v1_96.qasm',
        'cnt3-5_179.qasm',
        'mod10_176.qasm',
        '4gt4-v0_80.qasm',
        '4gt12-v0_88.qasm',
        '0410184_169.qasm',
        '4_49_16.qasm',
        '4gt12-v1_89.qasm',
        '4gt4-v0_79.qasm',
        'hwb4_49.qasm',
        '4gt4-v0_78.qasm',
        'mod10_171.qasm',
        '4gt12-v0_87.qasm',
        '4gt12-v0_86.qasm',
        '4gt4-v0_72.qasm',
        '4gt4-v1_74.qasm',
        'mini-alu_167.qasm',
        'one-two-three-v0_97.qasm',
        'rd53_135.qasm',
        'ham7_104.qasm',
        'decod24-enable_126.qasm',
        'mod8-10_178.qasm',
        '4gt4-v0_73.qasm',
        'ex3_229.qasm',
        'mod8-10_177.qasm',
        'alu-v2_31.qasm',
        'C17_204.qasm',
        'rd53_131.qasm',
        'alu-v2_30.qasm',
        'mod5adder_127.qasm',
        'rd53_133.qasm',
        'majority_239.qasm',
        'ex2_227.qasm',
        'cm82a_208.qasm',
        'sf_276.qasm',
        'sf_274.qasm',
        'con1_216.qasm',
        'rd53_130.qasm',
        'f2_232.qasm',
        'rd53_251.qasm',
        'hwb5_53.qasm',
        'radd_250.qasm',
        'rd73_252.qasm',
        'cycle10_2_110.qasm',
        'hwb6_56.qasm',
        'cm85a_209.qasm',
        'rd84_253.qasm',
        'root_255.qasm',
        'mlp4_245.qasm',
        'urf2_277.qasm',
        'sym9_148.qasm',
        'hwb7_59.qasm',
        'clip_206.qasm',
        'sym9_193.qasm',
        'dist_223.qasm',
        'sao2_257.qasm',
        'urf5_280.qasm',
        'urf1_278.qasm',
        'sym10_262.qasm',
        'hwb8_113.qasm',
        ]
        return QASM_file
            
    if bench_mark == 'Breal':
        import os
        path = "qasm_circuits/quantum_circuits/qiskit/" 
        QASM_file = os.listdir(path) #得到文件夹下的所有文件名称
        path_prefix = 'quantum_circuits/qiskit/'
        QASM_file_final = []
        for i in range(len(QASM_file)):
            current_full_path = path + QASM_file[i]
            info_dict = GetQASMAttribute(current_full_path)
            num_q = info_dict['num_q']
            QASM_file_final.append(path_prefix+QASM_file[i])
        QASM_file = QASM_file_final
        return QASM_file
      
