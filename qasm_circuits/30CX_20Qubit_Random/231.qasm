OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[15],q[4];
cx q[0],q[14];
cx q[14],q[4];
cx q[13],q[12];
cx q[19],q[10];
cx q[13],q[11];
cx q[6],q[10];
cx q[8],q[10];
cx q[13],q[18];
cx q[13],q[18];
cx q[14],q[16];
cx q[17],q[12];
cx q[14],q[1];
cx q[0],q[15];
cx q[2],q[10];
cx q[3],q[14];
cx q[6],q[14];
cx q[16],q[12];
cx q[15],q[6];
cx q[15],q[9];
cx q[19],q[4];
cx q[18],q[19];
cx q[8],q[19];
cx q[8],q[15];
cx q[4],q[10];
cx q[11],q[4];
cx q[0],q[5];
cx q[11],q[8];
cx q[17],q[7];
cx q[18],q[0];