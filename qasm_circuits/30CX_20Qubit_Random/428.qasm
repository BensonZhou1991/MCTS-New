OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[1],q[3];
cx q[15],q[5];
cx q[10],q[4];
cx q[2],q[16];
cx q[14],q[4];
cx q[6],q[11];
cx q[12],q[7];
cx q[2],q[4];
cx q[1],q[17];
cx q[3],q[17];
cx q[8],q[16];
cx q[3],q[13];
cx q[12],q[17];
cx q[4],q[0];
cx q[7],q[12];
cx q[2],q[0];
cx q[19],q[13];
cx q[9],q[12];
cx q[13],q[10];
cx q[16],q[4];
cx q[12],q[5];
cx q[11],q[16];
cx q[9],q[11];
cx q[3],q[4];
cx q[17],q[0];
cx q[9],q[18];
cx q[19],q[10];
cx q[14],q[15];
cx q[17],q[7];
cx q[6],q[4];