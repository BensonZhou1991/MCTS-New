OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg c[20];
cx q[19],q[8];
cx q[18],q[7];
cx q[15],q[7];
cx q[16],q[7];
cx q[7],q[4];
cx q[14],q[18];
cx q[4],q[3];
cx q[6],q[10];
cx q[12],q[2];
cx q[0],q[3];
cx q[12],q[1];
cx q[6],q[15];
cx q[14],q[5];
cx q[17],q[0];
cx q[10],q[5];
cx q[5],q[10];
cx q[13],q[4];
cx q[17],q[12];
cx q[0],q[17];
cx q[10],q[2];
cx q[17],q[19];
cx q[10],q[3];
cx q[9],q[0];
cx q[17],q[12];
cx q[3],q[0];
cx q[18],q[12];
cx q[16],q[8];
cx q[3],q[2];
cx q[16],q[8];
cx q[9],q[3];
cx q[0],q[16];
cx q[12],q[2];
cx q[3],q[6];
cx q[8],q[17];
cx q[4],q[13];
cx q[19],q[16];
cx q[4],q[19];
cx q[9],q[4];
cx q[16],q[18];
cx q[9],q[6];
cx q[19],q[11];
cx q[8],q[13];
cx q[6],q[16];
cx q[15],q[0];
cx q[16],q[18];
cx q[3],q[7];
cx q[7],q[6];
cx q[10],q[19];
cx q[11],q[17];
cx q[16],q[4];
cx q[13],q[16];
cx q[17],q[15];
cx q[1],q[19];
cx q[6],q[5];
cx q[17],q[16];
cx q[8],q[11];
cx q[5],q[4];
cx q[9],q[4];
cx q[10],q[12];
cx q[6],q[10];
cx q[2],q[1];
cx q[13],q[11];
cx q[7],q[13];
cx q[17],q[2];
cx q[6],q[2];
cx q[7],q[6];
cx q[12],q[13];
cx q[8],q[7];
cx q[5],q[14];
cx q[4],q[11];
cx q[17],q[1];
cx q[12],q[7];
cx q[0],q[19];
cx q[7],q[9];
cx q[19],q[15];
cx q[11],q[4];
cx q[10],q[16];
cx q[4],q[6];
cx q[17],q[19];
cx q[0],q[19];
cx q[2],q[13];
cx q[14],q[0];
cx q[11],q[13];
cx q[17],q[15];
cx q[2],q[0];
cx q[18],q[2];
cx q[7],q[4];
cx q[6],q[8];
cx q[0],q[4];
cx q[16],q[17];
cx q[11],q[2];
cx q[19],q[16];
cx q[16],q[13];
cx q[3],q[14];
cx q[4],q[5];
cx q[6],q[5];
cx q[0],q[7];
cx q[18],q[15];
cx q[17],q[13];
cx q[1],q[8];
cx q[2],q[5];
cx q[3],q[4];
cx q[1],q[18];
cx q[11],q[15];
cx q[9],q[18];
cx q[14],q[19];
cx q[11],q[4];
cx q[3],q[8];
cx q[7],q[2];
cx q[19],q[10];
cx q[4],q[1];
cx q[1],q[6];
cx q[10],q[2];
cx q[12],q[9];
cx q[14],q[7];
cx q[6],q[1];
cx q[12],q[17];
cx q[10],q[12];
cx q[5],q[18];
cx q[17],q[11];
cx q[18],q[19];
cx q[16],q[8];
cx q[0],q[9];
cx q[18],q[3];
cx q[4],q[15];
cx q[15],q[10];
cx q[19],q[15];
cx q[1],q[3];
cx q[14],q[1];
cx q[4],q[5];
cx q[19],q[2];
cx q[9],q[8];
cx q[2],q[3];
cx q[7],q[13];
cx q[9],q[13];
cx q[7],q[4];
cx q[14],q[5];
cx q[13],q[12];
cx q[5],q[2];
cx q[12],q[14];
cx q[16],q[3];
cx q[6],q[19];
cx q[12],q[6];
cx q[19],q[2];
cx q[10],q[17];
cx q[19],q[8];
cx q[5],q[12];
cx q[2],q[13];
cx q[8],q[12];
cx q[0],q[6];
cx q[17],q[12];
cx q[11],q[10];
cx q[18],q[15];
cx q[11],q[14];
cx q[1],q[2];
cx q[11],q[13];
cx q[18],q[4];
cx q[2],q[6];
cx q[12],q[11];
cx q[15],q[19];
cx q[9],q[3];
cx q[6],q[5];
cx q[3],q[2];
cx q[10],q[4];
cx q[9],q[19];
cx q[10],q[15];
cx q[7],q[11];
cx q[13],q[10];
cx q[5],q[18];
cx q[5],q[10];
cx q[6],q[8];
cx q[4],q[16];
cx q[6],q[0];
cx q[6],q[9];
cx q[13],q[7];
cx q[2],q[12];
cx q[11],q[4];
cx q[4],q[14];
cx q[11],q[14];
cx q[18],q[5];
cx q[9],q[1];
cx q[7],q[12];
cx q[19],q[4];
cx q[7],q[19];
cx q[2],q[7];
cx q[17],q[4];
cx q[5],q[4];
cx q[9],q[5];
cx q[15],q[19];
cx q[11],q[0];
cx q[17],q[12];
cx q[18],q[4];
cx q[2],q[14];
cx q[2],q[3];
cx q[10],q[17];
cx q[5],q[14];
cx q[16],q[13];
cx q[17],q[4];
cx q[15],q[8];
cx q[18],q[14];
cx q[12],q[0];
cx q[10],q[14];
cx q[10],q[16];
cx q[5],q[8];
cx q[2],q[7];
cx q[11],q[4];
cx q[6],q[10];
cx q[6],q[0];
cx q[14],q[8];
cx q[5],q[11];
cx q[16],q[13];
cx q[10],q[4];
cx q[9],q[3];
cx q[7],q[17];
cx q[13],q[0];
cx q[6],q[5];
cx q[16],q[19];
cx q[7],q[12];
cx q[11],q[16];
cx q[19],q[6];
cx q[12],q[13];
cx q[18],q[19];
cx q[12],q[4];
cx q[1],q[7];
cx q[15],q[11];
cx q[7],q[10];
cx q[12],q[13];
cx q[16],q[12];
cx q[19],q[4];
cx q[0],q[10];
cx q[14],q[1];
cx q[12],q[16];
cx q[11],q[2];
cx q[0],q[13];
cx q[16],q[9];
cx q[3],q[4];
cx q[9],q[4];
cx q[8],q[1];
cx q[9],q[15];
cx q[8],q[18];
cx q[5],q[8];
cx q[4],q[10];
cx q[8],q[19];
cx q[3],q[18];
cx q[16],q[8];
cx q[6],q[13];
cx q[5],q[4];
cx q[17],q[0];
cx q[16],q[8];
cx q[4],q[9];
cx q[19],q[8];
cx q[13],q[17];
cx q[8],q[2];
cx q[19],q[3];
cx q[12],q[15];
cx q[11],q[17];
cx q[7],q[4];
cx q[4],q[17];
cx q[14],q[5];
cx q[19],q[16];
cx q[16],q[11];
cx q[7],q[17];
cx q[4],q[19];
cx q[16],q[14];
cx q[16],q[10];
cx q[3],q[16];
cx q[19],q[10];
cx q[17],q[10];
cx q[13],q[19];
cx q[11],q[3];
cx q[3],q[0];
cx q[2],q[7];
cx q[4],q[1];
cx q[2],q[16];
cx q[18],q[11];
cx q[5],q[3];
cx q[7],q[17];
cx q[14],q[7];
cx q[4],q[17];
cx q[13],q[4];
cx q[19],q[3];
cx q[17],q[12];
cx q[10],q[1];
cx q[6],q[10];
cx q[9],q[17];
cx q[6],q[19];
cx q[1],q[0];
cx q[15],q[4];
cx q[18],q[1];
cx q[18],q[13];
cx q[2],q[12];
cx q[1],q[13];
cx q[9],q[7];
cx q[2],q[9];
cx q[3],q[19];
cx q[0],q[9];
cx q[4],q[11];
cx q[13],q[7];
cx q[18],q[12];
cx q[11],q[2];