OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[7],q[6];
cx q[7],q[19];
cx q[17],q[13];
cx q[6],q[13];
cx q[9],q[17];
cx q[5],q[2];
cx q[14],q[2];
cx q[16],q[17];
cx q[5],q[1];
cx q[0],q[13];
cx q[6],q[10];
cx q[18],q[12];
cx q[1],q[14];
cx q[12],q[16];
cx q[6],q[13];
cx q[17],q[5];
cx q[13],q[14];
cx q[6],q[10];
cx q[13],q[1];
cx q[8],q[10];
cx q[12],q[1];
cx q[5],q[15];
cx q[5],q[11];
cx q[1],q[6];
cx q[9],q[4];
cx q[15],q[14];
cx q[11],q[3];
cx q[6],q[18];
cx q[16],q[8];
cx q[11],q[15];