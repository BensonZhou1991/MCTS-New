OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
creg c[25];
cx q[19],q[21];
cx q[23],q[21];
cx q[22],q[11];
cx q[9],q[19];
cx q[22],q[16];
cx q[4],q[14];
cx q[5],q[17];
cx q[5],q[4];
cx q[16],q[7];
cx q[18],q[14];
cx q[18],q[2];
cx q[24],q[3];
cx q[22],q[10];
cx q[22],q[16];
cx q[16],q[5];
cx q[23],q[18];
cx q[11],q[2];
cx q[14],q[24];
cx q[7],q[8];
cx q[16],q[11];
cx q[8],q[24];
cx q[5],q[18];
cx q[7],q[20];
cx q[18],q[14];
cx q[10],q[13];
cx q[1],q[4];
cx q[0],q[17];
cx q[0],q[19];
cx q[11],q[0];
cx q[12],q[18];
cx q[6],q[4];
cx q[3],q[18];
cx q[6],q[23];
cx q[0],q[7];
cx q[3],q[24];
cx q[5],q[10];
cx q[18],q[4];
cx q[22],q[5];
cx q[1],q[22];
cx q[19],q[20];
cx q[6],q[4];
cx q[2],q[10];
cx q[18],q[14];
cx q[21],q[18];
cx q[1],q[3];
cx q[0],q[12];
cx q[2],q[18];
cx q[11],q[12];
cx q[20],q[18];
cx q[9],q[16];
cx q[20],q[6];
cx q[1],q[21];
cx q[12],q[19];
cx q[11],q[24];
cx q[19],q[12];
cx q[19],q[5];
cx q[21],q[24];
cx q[6],q[8];
cx q[8],q[14];
cx q[20],q[4];
cx q[1],q[17];
cx q[21],q[1];
cx q[1],q[15];
cx q[11],q[7];
cx q[2],q[3];
cx q[19],q[23];
cx q[11],q[3];
cx q[19],q[9];
cx q[9],q[19];
cx q[5],q[16];
cx q[5],q[2];
cx q[0],q[4];
cx q[11],q[15];
cx q[13],q[9];
cx q[17],q[24];
cx q[8],q[6];
cx q[1],q[19];
cx q[19],q[16];
cx q[8],q[14];
cx q[13],q[7];
cx q[8],q[21];
cx q[2],q[8];
cx q[14],q[23];
cx q[13],q[22];
cx q[21],q[13];
cx q[12],q[14];
cx q[17],q[1];
cx q[20],q[1];
cx q[1],q[6];
cx q[20],q[19];
cx q[15],q[0];
cx q[21],q[14];
cx q[3],q[18];
cx q[10],q[17];
cx q[16],q[24];
cx q[16],q[6];
cx q[6],q[12];
cx q[13],q[22];
cx q[0],q[5];
cx q[2],q[9];
cx q[6],q[5];
cx q[8],q[12];
cx q[1],q[9];
cx q[10],q[4];
cx q[20],q[12];
cx q[5],q[11];
cx q[0],q[9];
cx q[18],q[16];
cx q[24],q[14];
cx q[10],q[19];
cx q[0],q[6];
cx q[17],q[21];
cx q[12],q[0];
cx q[18],q[12];
cx q[22],q[24];
cx q[1],q[6];
cx q[4],q[7];
cx q[22],q[6];
cx q[19],q[11];
cx q[15],q[10];
cx q[16],q[4];
cx q[9],q[23];
cx q[6],q[13];
cx q[11],q[13];
cx q[8],q[10];
cx q[6],q[4];
cx q[3],q[2];
cx q[24],q[21];
cx q[8],q[11];
cx q[24],q[19];
cx q[20],q[9];
cx q[11],q[0];
cx q[6],q[7];
cx q[11],q[23];
cx q[23],q[7];
cx q[23],q[9];
cx q[4],q[2];
cx q[11],q[16];
cx q[2],q[22];
cx q[18],q[12];
cx q[10],q[24];
cx q[12],q[4];
cx q[20],q[3];
cx q[2],q[24];
cx q[22],q[2];
cx q[6],q[20];
cx q[17],q[19];
cx q[12],q[24];
cx q[19],q[15];
cx q[13],q[6];
cx q[12],q[1];
cx q[8],q[18];
cx q[20],q[2];
cx q[11],q[16];
cx q[20],q[9];
cx q[20],q[12];
cx q[10],q[11];
cx q[3],q[13];
cx q[7],q[13];
cx q[15],q[22];
cx q[5],q[21];
cx q[8],q[9];
cx q[5],q[9];
cx q[15],q[3];
cx q[15],q[10];
cx q[17],q[22];
cx q[3],q[0];
cx q[3],q[5];
cx q[14],q[9];
cx q[23],q[11];
cx q[8],q[9];
cx q[1],q[18];
cx q[15],q[8];
cx q[8],q[22];
cx q[15],q[10];
cx q[14],q[6];
cx q[16],q[5];
cx q[21],q[23];
cx q[20],q[9];
cx q[1],q[15];
cx q[16],q[9];
cx q[11],q[7];
cx q[24],q[0];
cx q[18],q[1];
cx q[6],q[0];
cx q[13],q[8];
cx q[5],q[4];
cx q[12],q[13];
cx q[22],q[2];
cx q[1],q[20];
cx q[0],q[20];
cx q[10],q[15];
cx q[5],q[2];
cx q[24],q[5];
cx q[17],q[5];
cx q[17],q[1];
cx q[17],q[20];
cx q[7],q[6];
cx q[16],q[10];
cx q[14],q[19];
cx q[8],q[19];
cx q[12],q[17];
cx q[14],q[0];
cx q[5],q[10];
cx q[2],q[13];
cx q[19],q[8];
cx q[10],q[18];
cx q[8],q[23];
cx q[2],q[9];
cx q[17],q[3];
cx q[12],q[2];
cx q[12],q[4];
cx q[19],q[15];
cx q[13],q[16];
cx q[20],q[10];
cx q[16],q[12];
cx q[23],q[22];
cx q[14],q[0];
cx q[19],q[1];
cx q[13],q[18];
cx q[11],q[0];
cx q[13],q[14];
cx q[16],q[13];
cx q[1],q[16];
cx q[17],q[7];
cx q[0],q[6];
cx q[23],q[19];
cx q[13],q[5];
cx q[7],q[0];
cx q[16],q[5];
cx q[16],q[4];
cx q[8],q[13];
cx q[11],q[5];
cx q[24],q[11];
cx q[19],q[3];
cx q[9],q[5];
cx q[3],q[9];
cx q[22],q[3];
cx q[18],q[23];
cx q[23],q[10];
cx q[17],q[16];
cx q[9],q[7];
cx q[20],q[15];
cx q[3],q[21];
cx q[17],q[8];
cx q[13],q[23];
cx q[11],q[17];
cx q[23],q[20];
cx q[14],q[9];
cx q[15],q[17];
cx q[22],q[21];
cx q[21],q[4];
cx q[17],q[20];
cx q[0],q[15];
cx q[18],q[22];
cx q[12],q[16];
cx q[1],q[3];
cx q[11],q[8];
cx q[22],q[18];
cx q[16],q[18];
cx q[6],q[13];
cx q[16],q[22];
cx q[3],q[2];
cx q[7],q[9];
cx q[20],q[23];
cx q[14],q[2];
cx q[7],q[24];
cx q[8],q[16];
cx q[11],q[19];
cx q[10],q[24];
cx q[1],q[16];
cx q[9],q[7];
cx q[13],q[20];
cx q[24],q[1];
cx q[2],q[24];
cx q[0],q[24];
cx q[10],q[7];
cx q[24],q[21];
cx q[23],q[14];
cx q[3],q[8];
cx q[2],q[24];
cx q[24],q[1];
cx q[15],q[3];
cx q[4],q[8];
cx q[20],q[21];
cx q[22],q[21];
cx q[24],q[2];
cx q[12],q[5];
cx q[15],q[3];
cx q[5],q[19];
cx q[23],q[15];
cx q[23],q[20];
cx q[0],q[23];
cx q[13],q[20];
cx q[1],q[8];
cx q[19],q[5];
cx q[0],q[17];
cx q[18],q[17];
cx q[2],q[1];
cx q[10],q[4];