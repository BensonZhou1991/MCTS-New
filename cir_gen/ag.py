# -*- coding: utf-8 -*-
"""
Created on Fri Jul 23 13:26:04 2021

@author: zhoux
"""
import networkx as nx

def GenerateEdgeofArchitectureGraph(vertex, method):
    edge = []
    num_vertex = len(vertex)
    if method[0] == 'circle' or method[0] == 'directed circle':        
        for i in range(num_vertex-1):
            edge.append((i, i+1))
        edge.append((num_vertex-1, 0))  
    
    '''
    grid architecturew with length = additional_arg[0], width = additional_arg[1]
    '''
    if method[0] == 'grid' or method[0] == 'directed grid':
        length = method[1]
        width = method[2]
        for raw in range(width-1):
            for col in range(length-1):
                current_v = col + raw*length
                edge.append((current_v, current_v + 1))
                edge.append((current_v, current_v + length))
        for raw in range(width-1):
            current_v = (length - 1) + raw*length
            edge.append((current_v, current_v + length))
        for col in range(length-1):
            current_v = col + (width - 1)*length
            edge.append((current_v, current_v + 1))
            
    if method[0] == 'grid2':
        length = method[1]
        width = method[2]
        for raw in range(width-1):
            for col in range(length-1):
                current_v = col + raw*length
                edge.append((current_v, current_v + 1))
                edge.append((current_v, current_v + length))
        for raw in range(width-1):
            current_v = (length - 1) + raw*length
            edge.append((current_v, current_v + length))
        for col in range(length-1):
            current_v = col + (width - 1)*length
            edge.append((current_v, current_v + 1))
        
        current_node1 = length*width
        for raw in [0, width-1]:
            for col in range(length):
                current_node2 = raw*length + col
                edge.append((current_node1, current_node2))
                current_node1 += 1
                
        for raw in [0, length-1]:
            for col in range(width):
                current_node2 = raw + col*length
                edge.append((current_node1, current_node2))
                current_node1 += 1
            
    return edge

def GenerateArchitectureGraph(method, draw_architecture_graph=False):
    '''
    generate architecture graph
    Input:
        method:
            IBM QX3
            IBM QX4
            IBM QX5
            IBM QX20
            IBM J-P
            IBM A-B-S
            IBM Rochester
            Grid 6*6
            Grid 7*7
            Grid 8*8
            example in paper
    '''
    AG = None
    
    if method == ['IBM QX3']:
        AG = GenerateArchitectureGraph(16, ['grid', 8, 2])
        AG.remove_edges_from([(1, 9),(4, 5)])
        num_q = 16

    if method == ['IBM QX5']:
        AG = nx.DiGraph()
        vertex = list(range(16))
        edges = [(1,2), (1,0), (2,3), (3,4), (3,14), (5,4), (6,5), (6,11), (6,7),\
                  (7,10), (8,7), (9,8), (9,10), (11,10), (12,5), (12,11), (12,13),\
                  (13,14), (13,4), (15,14), (15,2), (15,0)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
        num_q = 16

    if method == ['IBM QX20']:
        AG = nx.Graph()
        num_q = 20
        vertex = list(range(20))
        edges = [(0,1),(1,2),(2,3),(3,4),(0,5),(1,6),(2,7),(3,8),(4,9),(1,7),(2,6),(3,9),(4,8),\
                 (5,6),(6,7),(7,8),(8,9),(5,10),(6,11),(7,12),(8,13),(9,14),(5,11),(6,10),(7,13),(8,12),\
                 (10,11),(11,12),(12,13),(13,14),(10,15),(11,16),(12,17),(13,18),(14,19),(11,17),(12,16),(13,19),(14,18),\
                 (15,16),(16,17),(17,18),(18,19)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)

    if method == ['IBM J-P']:
        AG = nx.Graph()
        vertex = list(range(20))
        num_q = 20
        edges = [(0,1),(1,2),(2,3),(3,4),(0,5),(4,9),
                 (5,6),(6,7),(7,8),(8,9),(5,10),(7,12),(9,14),
                 (10,11),(11,12),(12,13),(13,14),(10,15),(14,19),
                 (15,16),(16,17),(17,18),(18,19)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)

    if method == ['IBM A-B-S']:
        AG = nx.Graph()
        vertex = list(range(20))
        num_q = 20
        edges = [(0,1),(1,2),(2,3),(3,4),(1,6),(3,8),
                 (5,6),(6,7),(7,8),(8,9),(5,10),(7,12),(9,14),
                 (10,11),(11,12),(12,13),(13,14),(11,16),(13,18),
                 (15,16),(16,17),(17,18),(18,19)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['IBM Rochester']:
        AG = nx.Graph()
        vertex = list(range(53))
        num_q = 53
        edges = [(0,1),(1,2),(2,3),(3,4),(0,5),(4,6),(5,9),(6,13),
                 (7,8),(8,9),(9,10),(10,11),(11,12),(12,13),(13,14),(14,15),
                 (7,16),(11,17),(15,18),(16,19),(17,23),(18,27),
                 (19,20),(20,21),(21,22),(22,23),(23,24),(24,25),(25,26),(26,27),
                 (21,28),(25,29),(28,32),(29,36),
                 (30,31),(31,32),(32,33),(33,34),(34,35),(35,36),(36,37),(37,38),
                 (30,39),(34,40),(38,41),(39,42),(40,46),(41,50),
                 (42,43),(43,44),(44,45),(45,46),(46,47),(47,48),(48,49),(49,50),
                 (44,51),(48,52)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
        
    if method == ['Google Sycamore']:
        AG = nx.Graph()
        vertex = list(range(53))
        num_q = 25 + 28
        edges = [(0,5),(1,5),(1,6),(2,6),(2,7),(3,7),(3,8),(4,8),
                 (5,9),(5,10),(6,10),(6,11),(11,7),(12,7),(12,8),(8,13),
                 (9,14),(10,14),(15,10),(11,15),(11,16),(12,16),(12,17),(13,17),
                 (19,14),(14,18),(15,19),(15,20),(16,20),(16,21),(17,21),(17,22),
                 (18,23),(19,23),(19,24),(20,24),(20,25),(21,25),(21,26),(22,26),
                 (23,27),(24,27),(24,28),(25,28),(25,29),(26,29),(26,30),
                 (27,31),(27,32),(28,32),(28,33),(29,33),(29,34),(30,34),
                 (31,35),(31,36),(32,36),(32,37),(33,37),(33,38),(34,38),(34,39),
                 (35,40),(46,40),(36,41),(37,41),(37,42),(38,42),(38,43),(39,43),
                 (40,44),(40,45),(41,45),(41,46),(42,46),(42,47),(43,47),(43,48),
                 (44,49),(45,49),(45,50),(46,50),(46,51),(47,51),(47,52),(48,52)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)

    if method == ['IBM QX4']:
        AG = nx.DiGraph()
        vertex = list(range(5))
        edges = [(1,0), (2,0), (2,1), (2,4), (3,4), (3,2)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['example in paper']:
        AG = nx.DiGraph()
        vertex = list(range(6))
        edges = [(1,2), (1,0), (2,3), (3,4), (5,4), (5,2), (5,0)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges) 
       
    if method == ['ibmq_guadalupe']:
        AG = nx.Graph()
        num_q = 16
        vertex = list(range(16))
        edges = [(0,1), (1,4), (4,7), (7,10), (10,12), (15,12), (6,7),
                 (1,2), (2,3), (12,13), (13,14),
                 (3,5), (5,8), (8,11), (11,14), (8,9)]
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges) 
    
    if method == ['Grid 10*10'] or method == ['Grid 10X10']:
        AG = nx.Graph()
        num_q = 100
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 10, 10])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 9*9'] or method == ['Grid 9X9']:
        AG = nx.Graph()
        num_q = 81
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 9, 9])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 8*8'] or method == ['Grid 8X8']:
        AG = nx.Graph()
        num_q = 64
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 8, 8])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)

    if method == ['Grid 7*7'] or method == ['Grid 7X7']:
        AG = nx.Graph()
        num_q = 49
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 7, 7])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 6*6'] or method == ['Grid 6X6']:
        AG = nx.Graph()
        num_q = 36
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 6, 6])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 5*5'] or method == ['Grid 5X5']:
        AG = nx.Graph()
        num_q = 25
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 5, 5])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 5*4'] or method == ['Grid 5X4']:
        AG = nx.Graph()
        num_q = 20
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 5, 4])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 4*4'] or method == ['Grid 4X4']:
        AG = nx.Graph()
        num_q = 16
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 4, 4])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
        
    
    if method == ['Grid 3*3'] or method == ['Grid 3X3']:
        AG = nx.Graph()
        num_q = 9
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 3, 3])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    if method == ['Grid 2*2'] or method == ['Grid 2X2']:
        AG = nx.Graph()
        num_q = 4
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 2, 2])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)

    if method == ['Grid 2*3']:
        AG = nx.Graph()
        num_q = 6
        vertex = list(range(num_q))
        edges = GenerateEdgeofArchitectureGraph([], ['grid', 2, 3])
        AG.add_nodes_from(vertex)
        AG.add_edges_from(edges)
    
    # add edge_2_index
    AG.edge_2_index = {}
    i = -1
    for edge in AG.edges():
        i += 1
        AG.edge_2_index[edge] = i
    # add shortest length and path to AG
    AG.shortest_length = dict(nx.shortest_path_length(AG, source=None,
                                                           target=None,
                                                           weight=None,
                                                           method='dijkstra'))
    AG.shortest_path = nx.shortest_path(AG, source=None, target=None, 
                                             weight=None, method='dijkstra')

    if AG == None: raise(Exception('Unsupported AG %s' %method))
    if draw_architecture_graph == True: nx.draw(AG, with_labels=True)
    return AG