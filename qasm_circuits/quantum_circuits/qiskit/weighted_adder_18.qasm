OPENQASM 2.0;
include "qelib1.inc";
qreg q[18];
u2(0,pi) q[11];
u2(0,pi) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[0],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[0],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[0],q[6];
u1(pi/4) q[0];
u1(-pi/4) q[6];
cx q[0],q[6];
cx q[0],q[6];
u(pi,0,pi) q[6];
h q[13];
h q[14];
h q[15];
h q[16];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[0],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[0],q[7];
cx q[0],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[0];
cx q[0],q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[7];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[0],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[0],q[8];
cx q[0],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[0];
cx q[0],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[0],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[0],q[9];
cx q[0],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[0];
cx q[0],q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[9];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[16];
h q[16];
cx q[16],q[11];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[0],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[0],q[10];
cx q[0],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[0];
cx q[0],q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(-pi/4) q[11];
cx q[0],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[0],q[11];
cx q[0],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[0];
cx q[0],q[16];
h q[16];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[15];
t q[16];
h q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[14];
t q[15];
h q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[12];
t q[13];
h q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[0],q[17];
u1(pi/4) q[17];
cx q[0],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[0],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[0],q[6];
u1(pi/4) q[0];
u1(-pi/4) q[6];
cx q[0],q[6];
u(pi,0,pi) q[6];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[1],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[1],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[1];
u1(-pi/4) q[6];
cx q[1],q[6];
cx q[1],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[1],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[1],q[7];
cx q[1],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[1];
cx q[1],q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[7];
u(pi,0,pi) q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[1],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[1],q[8];
cx q[1],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[1];
cx q[1],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
u(pi,0,pi) q[9];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[1],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[1],q[9];
cx q[1],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[1];
cx q[1],q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[9];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[1],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[1],q[10];
cx q[1],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[1];
cx q[1],q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
cx q[16],q[11];
u1(-pi/4) q[11];
cx q[1],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[1],q[11];
cx q[1],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[1];
cx q[1],q[16];
h q[16];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[15];
t q[16];
h q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[14];
t q[15];
h q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[12];
t q[13];
h q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[1],q[17];
u1(pi/4) q[17];
cx q[1],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[1],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[1];
u1(-pi/4) q[6];
cx q[1],q[6];
u(pi,0,pi) q[6];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[2],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[2],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[2],q[6];
u1(pi/4) q[2];
u1(-pi/4) q[6];
cx q[2],q[6];
cx q[2],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[2],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[2],q[7];
cx q[2],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[2];
cx q[2],q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[7];
u(pi,0,pi) q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[2],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[2],q[8];
cx q[2],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[2];
cx q[2],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
u(pi,0,pi) q[9];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[2],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[2],q[9];
cx q[2],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[2];
cx q[2],q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[9];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[2],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[2],q[10];
cx q[2],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[2];
cx q[2],q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
cx q[16],q[11];
u1(-pi/4) q[11];
cx q[2],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[2],q[11];
cx q[2],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[2];
cx q[2],q[16];
h q[16];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[15];
t q[16];
h q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[14];
t q[15];
h q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[12];
t q[13];
h q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[2],q[17];
u1(pi/4) q[17];
cx q[2],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[2],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[2],q[6];
u1(pi/4) q[2];
u1(-pi/4) q[6];
cx q[2],q[6];
u(pi,0,pi) q[6];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[3],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[3],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[3],q[6];
u1(pi/4) q[3];
u1(-pi/4) q[6];
cx q[3],q[6];
cx q[3],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[3],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[3],q[7];
cx q[3],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[3];
cx q[3],q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[7];
u(pi,0,pi) q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[3],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[3],q[8];
cx q[3],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[3];
cx q[3],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
u(pi,0,pi) q[9];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[3],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[3],q[9];
cx q[3],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[3];
cx q[3],q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[9];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[3],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[3],q[10];
cx q[3],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[3];
cx q[3],q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
cx q[16],q[11];
u1(-pi/4) q[11];
cx q[3],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[3],q[11];
cx q[3],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[3];
cx q[3],q[16];
h q[16];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[15];
t q[16];
h q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[14];
t q[15];
h q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[12];
t q[13];
h q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[3],q[17];
u1(pi/4) q[17];
cx q[3],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[3],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[3],q[6];
u1(pi/4) q[3];
u1(-pi/4) q[6];
cx q[3],q[6];
u(pi,0,pi) q[6];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[4],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[4],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[4],q[6];
u1(pi/4) q[4];
u1(-pi/4) q[6];
cx q[4],q[6];
cx q[4],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[4],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[4],q[7];
cx q[4],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[4];
cx q[4],q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[7];
u(pi,0,pi) q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[4],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[4],q[8];
cx q[4],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[4];
cx q[4],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
u(pi,0,pi) q[9];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[4],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[4],q[9];
cx q[4],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[4];
cx q[4],q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[9];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[4],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[4],q[10];
cx q[4],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[4];
cx q[4],q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
cx q[16],q[11];
u1(-pi/4) q[11];
cx q[4],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[4],q[11];
cx q[4],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[4];
cx q[4],q[16];
h q[16];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[15];
t q[16];
h q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[14];
t q[15];
h q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[12];
t q[13];
h q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[4],q[17];
u1(pi/4) q[17];
cx q[4],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[4],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[4],q[6];
u1(pi/4) q[4];
u1(-pi/4) q[6];
cx q[4],q[6];
u(pi,0,pi) q[6];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[5],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[5],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u(pi,0,pi) q[12];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[5],q[6];
cx q[5],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
u(pi,0,pi) q[7];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[12];
t q[13];
h q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[13];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[7];
cx q[5],q[7];
u2(0,pi) q[7];
cx q[12],q[7];
u1(-pi/4) q[7];
cx q[5],q[7];
u1(pi/4) q[7];
cx q[12],q[7];
u1(pi/4) q[12];
u1(-pi/4) q[7];
cx q[5],q[7];
cx q[5],q[12];
u1(-pi/4) q[12];
u1(pi/4) q[5];
cx q[5],q[12];
u(pi,0,pi) q[12];
u1(pi/4) q[7];
u2(0,pi) q[7];
u(pi,0,pi) q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
t q[14];
h q[14];
u(pi,0,pi) q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u2(0,pi) q[8];
cx q[13],q[8];
u1(-pi/4) q[8];
cx q[5],q[8];
u1(pi/4) q[8];
cx q[13],q[8];
u1(pi/4) q[13];
u1(-pi/4) q[8];
cx q[5],q[8];
cx q[5],q[13];
u1(-pi/4) q[13];
u1(pi/4) q[5];
cx q[5],q[13];
u1(pi/4) q[8];
u2(0,pi) q[8];
u(pi,0,pi) q[8];
u(pi,0,pi) q[9];
u(pi,0,pi) q[9];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[14];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[15];
u(pi,0,pi) q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[9];
cx q[5],q[9];
u2(0,pi) q[9];
cx q[14],q[9];
u1(-pi/4) q[9];
cx q[5],q[9];
u1(pi/4) q[9];
cx q[14],q[9];
u1(pi/4) q[14];
u1(-pi/4) q[9];
cx q[5],q[9];
cx q[5],q[14];
u1(-pi/4) q[14];
u1(pi/4) q[5];
cx q[5],q[14];
u(pi,0,pi) q[14];
u1(pi/4) q[9];
u2(0,pi) q[9];
u(pi,0,pi) q[10];
u(pi,0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[15];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[10];
cx q[5],q[10];
u2(0,pi) q[10];
cx q[15],q[10];
u1(-pi/4) q[10];
cx q[5],q[10];
u1(pi/4) q[10];
cx q[15],q[10];
u1(pi/4) q[15];
u1(-pi/4) q[10];
cx q[5],q[10];
cx q[5],q[15];
u1(-pi/4) q[15];
u1(pi/4) q[5];
cx q[5],q[15];
u(pi,0,pi) q[15];
u1(pi/4) q[10];
u2(0,pi) q[10];
cx q[10],q[17];
u1(-pi/4) q[17];
u1(pi/4) q[11];
u2(0,pi) q[11];
u2(0,pi) q[11];
cx q[16],q[11];
u1(-pi/4) q[11];
cx q[5],q[11];
u1(pi/4) q[11];
cx q[16],q[11];
u1(pi/4) q[16];
u1(-pi/4) q[11];
cx q[5],q[11];
cx q[5],q[16];
u1(-pi/4) q[16];
u1(pi/4) q[5];
cx q[5],q[16];
h q[16];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[16];
tdg q[16];
cx q[15],q[16];
t q[16];
cx q[17],q[16];
t q[17];
tdg q[16];
cx q[15],q[16];
cx q[15],q[17];
tdg q[17];
t q[15];
cx q[15],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[15];
h q[15];
t q[16];
h q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[16];
cx q[10],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[15];
tdg q[15];
cx q[14],q[15];
t q[15];
cx q[17],q[15];
t q[17];
tdg q[15];
cx q[14],q[15];
cx q[14],q[17];
tdg q[17];
t q[14];
cx q[14],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[14];
h q[14];
t q[15];
h q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[15];
cx q[9],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[14];
tdg q[14];
cx q[13],q[14];
t q[14];
cx q[17],q[14];
t q[17];
tdg q[14];
cx q[13],q[14];
cx q[13],q[17];
tdg q[17];
t q[13];
cx q[13],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
h q[13];
t q[14];
h q[14];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[8],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
cx q[17],q[13];
tdg q[13];
cx q[12],q[13];
t q[13];
cx q[17],q[13];
t q[17];
tdg q[13];
cx q[12],q[13];
cx q[12],q[17];
tdg q[17];
t q[12];
cx q[12],q[17];
u2(0,pi) q[17];
u1(pi/4) q[17];
u(pi,0,pi) q[12];
u2(0,pi) q[12];
t q[13];
h q[13];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[7],q[17];
u1(-pi/4) q[17];
cx q[5],q[17];
u1(pi/4) q[17];
cx q[5],q[13];
cx q[5],q[12];
u1(pi/4) q[12];
cx q[6],q[12];
u1(-pi/4) q[12];
cx q[5],q[12];
u1(pi/4) q[12];
u2(0,pi) q[12];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[5],q[6];
u(pi,0,pi) q[6];
cx q[7],q[17];
u1(-pi/4) q[17];
u2(0,pi) q[17];
u(pi,0,pi) q[8];
u1(pi/4) q[11];
u2(0,pi) q[11];