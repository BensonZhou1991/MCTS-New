OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[13],q[7];
cx q[14],q[2];
cx q[16],q[14];
cx q[16],q[19];
cx q[18],q[13];
cx q[14],q[6];
cx q[6],q[2];
cx q[3],q[6];
cx q[13],q[9];
cx q[15],q[6];
cx q[4],q[11];
cx q[6],q[10];
cx q[19],q[14];
cx q[2],q[15];
cx q[18],q[4];
cx q[9],q[5];
cx q[12],q[2];
cx q[3],q[15];
cx q[13],q[0];
cx q[17],q[19];
cx q[14],q[8];
cx q[4],q[19];
cx q[2],q[10];
cx q[11],q[1];
cx q[18],q[14];
cx q[11],q[10];
cx q[7],q[15];
cx q[11],q[4];
cx q[6],q[18];
cx q[17],q[0];
cx q[4],q[3];
cx q[8],q[3];
cx q[2],q[0];
cx q[16],q[5];
cx q[0],q[15];
cx q[2],q[7];
cx q[4],q[9];
cx q[10],q[2];
cx q[8],q[5];
cx q[15],q[8];
cx q[15],q[11];
cx q[1],q[4];
cx q[9],q[2];
cx q[16],q[15];
cx q[17],q[13];
cx q[5],q[7];
cx q[3],q[16];
cx q[9],q[2];
cx q[17],q[9];
cx q[2],q[13];
cx q[8],q[4];
cx q[8],q[9];
cx q[1],q[14];
cx q[3],q[6];
cx q[9],q[1];
cx q[12],q[1];
cx q[0],q[14];
cx q[8],q[18];
cx q[12],q[0];
cx q[18],q[7];
cx q[2],q[19];
cx q[9],q[10];
cx q[18],q[11];
cx q[12],q[19];
cx q[6],q[17];
cx q[4],q[3];
cx q[12],q[19];
cx q[3],q[13];
cx q[14],q[3];
cx q[10],q[19];
cx q[5],q[6];
cx q[16],q[4];
cx q[9],q[19];
cx q[12],q[1];
cx q[12],q[3];
cx q[17],q[11];
cx q[6],q[14];
cx q[9],q[11];
cx q[4],q[13];
cx q[13],q[5];
cx q[4],q[10];
cx q[7],q[18];
cx q[1],q[10];
cx q[7],q[2];
cx q[8],q[2];
cx q[19],q[5];
cx q[10],q[8];
cx q[6],q[4];
cx q[10],q[4];
cx q[0],q[7];
cx q[4],q[1];
cx q[2],q[10];
cx q[11],q[1];
cx q[6],q[9];
cx q[11],q[5];
cx q[11],q[8];
cx q[4],q[10];
cx q[6],q[15];
cx q[5],q[4];
cx q[14],q[5];
cx q[11],q[6];
cx q[14],q[1];
cx q[2],q[7];
cx q[9],q[17];
cx q[8],q[9];
cx q[18],q[19];
cx q[8],q[0];
cx q[17],q[10];
cx q[12],q[14];
cx q[19],q[4];
cx q[9],q[3];
cx q[13],q[0];
cx q[8],q[18];
cx q[12],q[3];
cx q[0],q[11];
cx q[11],q[17];
cx q[9],q[5];
cx q[11],q[1];
cx q[19],q[3];
cx q[3],q[10];
cx q[19],q[3];
cx q[12],q[15];
cx q[8],q[2];
cx q[7],q[14];
cx q[4],q[11];
cx q[9],q[2];
cx q[14],q[0];
cx q[0],q[18];
cx q[15],q[14];
cx q[15],q[3];
cx q[12],q[13];
cx q[2],q[3];
cx q[16],q[19];
cx q[8],q[1];
cx q[12],q[4];
cx q[19],q[8];
cx q[2],q[7];
cx q[16],q[4];
cx q[14],q[13];
cx q[13],q[14];
cx q[9],q[8];
cx q[0],q[19];
cx q[16],q[5];
cx q[5],q[15];
cx q[8],q[17];
cx q[12],q[10];
cx q[3],q[1];
cx q[11],q[7];
cx q[14],q[3];
cx q[10],q[19];