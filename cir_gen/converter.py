# -*- coding: utf-8 -*-
"""
Created on Thu Oct 21 23:27:49 2021

@author: zhoux
"""

def map_convert(map1, map2, num_q_phy):
    '''
    Generate physical SWAP sequence to convert map1 to map2 assuming the full
    connectivity.
    map:
        list -> log_q to phy_q
    '''
    swaps = []
    num_q_log = len(map1)
    for q_log in range(num_q_log):
        q_phy1, q_phy2 = map1[q_log], map2[q_log]
        if q_phy1 == -1 or q_phy2 == -1:
            if q_phy1 == -1 and q_phy2 == -1: continue
            raise()
        if q_phy1 != q_phy2:
            swaps.append((q_phy1, q_phy2))
            for q in range(num_q_log):
                if map1[q] == q_phy2: 
                    map1[q] = q_phy1
                    break
            map1[q_log] = q_phy2
    return swaps
            