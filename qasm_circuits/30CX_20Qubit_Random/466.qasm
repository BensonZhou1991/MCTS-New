OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[13],q[18];
cx q[2],q[6];
cx q[12],q[9];
cx q[16],q[7];
cx q[1],q[8];
cx q[2],q[4];
cx q[11],q[4];
cx q[11],q[7];
cx q[14],q[8];
cx q[1],q[11];
cx q[4],q[19];
cx q[14],q[7];
cx q[18],q[12];
cx q[8],q[5];
cx q[9],q[7];
cx q[3],q[9];
cx q[19],q[9];
cx q[1],q[0];
cx q[1],q[6];
cx q[3],q[17];
cx q[12],q[0];
cx q[0],q[8];
cx q[14],q[10];
cx q[6],q[19];
cx q[17],q[2];
cx q[9],q[18];
cx q[19],q[1];
cx q[4],q[2];
cx q[1],q[6];
cx q[5],q[2];