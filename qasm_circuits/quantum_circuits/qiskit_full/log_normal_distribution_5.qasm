OPENQASM 2.0;
include "qelib1.inc";
gate multiplex1_reverse_reverse_dg_2017655562760 q0 { ry(0.13452086) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017654887752 q0 { ry(0.083725846) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017659977544 q0 { ry(0.075666189) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017655207496 q0 { ry(0.10983522) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017659125192 q0 { ry(0.10575741) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(0.074597412) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017360753544 q0 { ry(0.081515547) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017655302792 q0 { ry(0.12537087) q0; }
gate multiplex1_reverse_reverse_dg_2017654023880 q0 { ry(0.12662786) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017658147592 q0 { ry(0.081805866) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg q0 { ry(0.074702692) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017658626632 q0 { ry(0.10631518) q0; }
gate multiplex1_reverse_reverse_dg_2018631626184 q0 { ry(0.11056369) q0; }
gate multiplex1_reverse_reverse_reverse_dg q0 { ry(0.075832701) q0; }
gate multiplex1_reverse_reverse_dg q0 { ry(0.08410662) q0; }
gate multiplex1_reverse_dg q0 { ry(1.6906487) q0; }
qreg q[5];
multiplex1_reverse_dg q[0];
ry(1.7009835) q[1];
r(1.7122814,pi/2) q[2];
u3(1.6960337,0,0) q[3];
u(1.6065947,0,0) q[4];
cx q[4],q[3];
u3(0.24488941,0,0) q[3];
cx q[4],q[3];
cx q[3],q[2];
r(0.17145187,pi/2) q[2];
cx q[4],q[2];
r(0.16665969,pi/2) q[2];
cx q[3],q[2];
r(0.20049419,pi/2) q[2];
cx q[4],q[2];
cx q[2],q[1];
ry(0.11409306) q[1];
cx q[3],q[1];
ry(0.10580227) q[1];
cx q[2],q[1];
ry(0.14407733) q[1];
cx q[4],q[1];
ry(0.1415887) q[1];
cx q[2],q[1];
ry(0.10469776) q[1];
cx q[3],q[1];
ry(0.11265149) q[1];
cx q[2],q[1];
ry(0.15955993) q[1];
cx q[4],q[1];
cx q[1],q[0];
multiplex1_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2018631626184 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg_2017658626632 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg_2017658147592 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017654023880 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg_2017655302792 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017360753544 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017659125192 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg_2017655207496 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017659977544 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg_2017654887752 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017655562760 q[0];
cx q[4],q[0];
