# -*- coding: utf-8 -*-
"""
Created on Mon Dec 20 17:00:06 2021

@author: zhoux
"""

def get_sim_function(method_AG):
    # get function for simulation
    if method_AG[0] == 'IBM QX20':
        from .size.to_python_Q20 import to_python
        return to_python.SimTest
    if method_AG[0] == 'IBM Rochester':
        from .size.to_python_Rochester import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 8*8' or method_AG[0] == 'Grid 8X8':
        from .size.to_python_Grid_8X8 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 7*7' or method_AG[0] == 'Grid 7X7':
        from .size.to_python_Grid_7X7 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 6*6' or method_AG[0] == 'Grid 6X6':
        from .size.to_python_Grid_6X6 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 5*5' or method_AG[0] == 'Grid 5X5':
        from .size.to_python_Grid_5X5 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 5*4' or method_AG[0] == 'Grid 5X4':
        from .size.to_python_Grid_5X4 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 4*4' or method_AG[0] == 'Grid 4X4':
        from .size.to_python_Grid_4X4 import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 2*3' or method_AG[0] == 'Grid 2X3':
        from .size.to_python_Grid_2X3 import to_python
        return to_python.SimTest
    if method_AG == ['line', 5]:
        from .size.to_python_Line_5 import to_python
        return to_python.SimTest
    raise(Exception('Unimplemented simulation function for', method_AG[0]))
    

def get_sim_function_depth(method_AG):
    # get function for simulation
    if method_AG[0] == 'IBM QX20':
        from .depth.sim_Q20_depth import to_python
        return to_python.SimTest
    if method_AG[0] == 'Grid 5*4' or method_AG[0] == 'Grid 5X4':
        from .depth.sim_Grid_5X4_depth import to_python
        return to_python.SimTest
    raise(Exception('Unimplemented simulation function for', method_AG[0]))
