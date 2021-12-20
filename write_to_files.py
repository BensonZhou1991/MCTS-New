# -*- coding: utf-8 -*-
"""
Created on Thu Oct 29 13:59:11 2020

@author: zxz58
"""
import csv

def write_to_excel(file_path, res_dic, item_names):
    f = open(file_path, 'w', encoding='utf-8', newline='')
    csv_writer = csv.writer(f)
    # first row
    csv_writer.writerow(item_names)
    num_row = len(res_dic[item_names[0]])
    for i in range(num_row):
        row_data = []
        #row_data.append()
        for item_name in item_names:
            row_data.append(res_dic[item_name][i])
        csv_writer.writerow(row_data)
    f.close()