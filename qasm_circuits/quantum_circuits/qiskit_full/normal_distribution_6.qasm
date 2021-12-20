OPENQASM 2.0;
include "qelib1.inc";
gate multiplex1_reverse_reverse_dg_2017655737544 q0 { ry(0.0080623099) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2016852948680 q0 { ry(-4.0940263e-09) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017658111880 q0 { ry(-1.6376209e-08) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2016853714952 q0 { ry(-8.1880942e-09) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2016854717000 q0 { ry(-6.55065e-08) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(1.6633916e-13) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017362380552 q0 { ry(-3.2753084e-08) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017654584712 q0 { ry(-1.6376521e-08) q0; }
gate multiplex1_reverse_reverse_dg_2017360026056 q0 { ry(0.0040310894) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017658253576 q0 { ry(-2.0468469e-09) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017361370824 q0 { ry(-8.1874394e-09) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(0) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2016896066312 q0 { ry(-4.0937144e-09) q0; }
gate multiplex1_reverse_reverse_dg_2017360369928 q0 { ry(0.0020155365) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg q0 { ry(-1.0234026e-09) q0; }
gate multiplex1_reverse_reverse_dg_2017653988488 q0 { ry(0.0010077672) q0; }
gate multiplex1_reverse_reverse_reverse_dg q0 { ry(0) q0; }
gate multiplex1_reverse_reverse_dg q0 { ry(0.00050388349) q0; }
gate multiplex1_reverse_dg q0 { ry(pi/2) q0; }
qreg q[6];
multiplex1_reverse_dg q[0];
ry(pi/2) q[1];
r(pi/2,pi/2) q[2];
u3(pi/2,0,0) q[3];
u(pi/2,0,0) q[4];
u(pi/2,0,0) q[5];
cx q[5],q[4];
u(0.12592999,0,0) q[4];
cx q[5],q[4];
cx q[4],q[3];
u3(0.032008446,0,0) q[3];
cx q[5],q[3];
u3(0,0,0) q[3];
cx q[4],q[3];
u3(0.064082606,0,0) q[3];
cx q[5],q[3];
cx q[3],q[2];
r(0.0080470311,pi/2) q[2];
cx q[4],q[2];
r(0,pi/2) q[2];
cx q[3],q[2];
r(0.016095103,pi/2) q[2];
cx q[5],q[2];
r(0,pi/2) q[2];
cx q[3],q[2];
r(-4.1699375e-06,pi/2) q[2];
cx q[4],q[2];
r(0,pi/2) q[2];
cx q[3],q[2];
r(0.032198549,pi/2) q[2];
cx q[5],q[2];
cx q[2],q[1];
ry(0.0020147683) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(0.004029553) q[1];
cx q[4],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(-6.5406458e-08) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(0.0080592368) q[1];
cx q[5],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(-2.6173208e-07) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(-5.2347478e-07) q[1];
cx q[4],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(-1.3085542e-07) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(0.016119521) q[1];
cx q[5],q[1];
cx q[1],q[0];
multiplex1_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017653988488 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017360369928 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2016896066312 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017361370824 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017658253576 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017360026056 q[0];
cx q[5],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017654584712 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017362380552 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2016854717000 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2016853714952 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017658111880 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2016852948680 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017655737544 q[0];
cx q[5],q[0];
