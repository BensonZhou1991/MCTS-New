OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[10],q[12];
cx q[5],q[17];
cx q[6],q[12];
cx q[0],q[11];
cx q[10],q[9];
cx q[5],q[7];
cx q[8],q[0];
cx q[10],q[3];
cx q[5],q[9];
cx q[11],q[16];
cx q[14],q[2];
cx q[18],q[2];
cx q[2],q[18];
cx q[3],q[10];
cx q[9],q[16];
cx q[0],q[11];
cx q[14],q[8];
cx q[12],q[11];
cx q[18],q[16];
cx q[11],q[16];
cx q[3],q[5];
cx q[12],q[7];
cx q[3],q[0];
cx q[7],q[5];
cx q[7],q[4];
cx q[3],q[5];
cx q[9],q[18];
cx q[10],q[6];
cx q[9],q[3];
cx q[19],q[13];