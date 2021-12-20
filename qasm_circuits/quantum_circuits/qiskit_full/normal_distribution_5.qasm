OPENQASM 2.0;
include "qelib1.inc";
gate multiplex1_reverse_reverse_dg_2017668597320 q0 { ry(0.016647798) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017658225992 q0 { ry(-1.4416387e-07) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017360089864 q0 { ry(-5.7671791e-07) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(0) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017653347272 q0 { ry(-2.8835271e-07) q0; }
gate multiplex1_reverse_reverse_dg_2017652997384 q0 { ry(0.008323322) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg q0 { ry(-7.2056961e-08) q0; }
gate multiplex1_reverse_reverse_dg_2017359428296 q0 { ry(0.0041615889) q0; }
gate multiplex1_reverse_reverse_reverse_dg q0 { ry(0) q0; }
gate multiplex1_reverse_reverse_dg q0 { ry(0.0020807855) q0; }
gate multiplex1_reverse_dg q0 { ry(pi/2) q0; }
qreg q[5];
multiplex1_reverse_dg q[0];
ry(pi/2) q[1];
r(pi/2,pi/2) q[2];
u3(pi/2,0,0) q[3];
u(pi/2,0,0) q[4];
cx q[4],q[3];
u3(0.12994516,0,0) q[3];
cx q[4],q[3];
cx q[3],q[2];
r(0.033047308,pi/2) q[2];
cx q[4],q[2];
r(0,pi/2) q[2];
cx q[3],q[2];
r(0.066166954,pi/2) q[2];
cx q[4],q[2];
cx q[2],q[1];
ry(0.0083101613) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(0.016621469) q[1];
cx q[4],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(-4.5928436e-06) q[1];
cx q[3],q[1];
ry(0) q[1];
cx q[2],q[1];
ry(0.033252126) q[1];
cx q[4],q[1];
cx q[1],q[0];
multiplex1_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017359428296 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017652997384 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017653347272 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017360089864 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017658225992 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017668597320 q[0];
cx q[4],q[0];
