OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
creg c[25];
cx q[6],q[8];
cx q[23],q[8];
cx q[23],q[15];
cx q[19],q[23];
cx q[13],q[23];
cx q[23],q[8];
cx q[22],q[10];
cx q[4],q[24];
cx q[21],q[16];
cx q[14],q[17];
cx q[15],q[19];
cx q[19],q[23];
cx q[11],q[21];
cx q[19],q[17];
cx q[21],q[12];
cx q[19],q[15];
cx q[7],q[19];
cx q[0],q[23];
cx q[4],q[5];
cx q[9],q[3];
cx q[1],q[21];
cx q[0],q[21];
cx q[12],q[22];
cx q[14],q[21];
cx q[19],q[8];
cx q[9],q[5];
cx q[3],q[11];
cx q[16],q[2];
cx q[23],q[13];
cx q[0],q[23];
cx q[24],q[12];
cx q[11],q[0];
cx q[8],q[7];
cx q[16],q[6];
cx q[19],q[12];
cx q[0],q[5];
cx q[1],q[24];
cx q[11],q[16];
cx q[18],q[16];
cx q[2],q[24];
cx q[9],q[18];
cx q[15],q[2];
cx q[9],q[10];
cx q[20],q[19];
cx q[12],q[23];
cx q[19],q[12];
cx q[16],q[20];
cx q[21],q[12];
cx q[2],q[5];
cx q[19],q[7];
cx q[2],q[6];
cx q[14],q[6];
cx q[11],q[1];
cx q[14],q[24];
cx q[9],q[5];
cx q[11],q[3];
cx q[24],q[7];
cx q[1],q[12];
cx q[10],q[12];
cx q[13],q[5];
cx q[16],q[3];
cx q[11],q[20];
cx q[23],q[14];
cx q[9],q[19];
cx q[11],q[13];
cx q[20],q[0];
cx q[20],q[9];
cx q[2],q[23];
cx q[21],q[2];
cx q[8],q[0];
cx q[1],q[3];
cx q[10],q[8];
cx q[14],q[15];
cx q[13],q[17];
cx q[21],q[7];
cx q[2],q[14];
cx q[0],q[10];
cx q[7],q[20];
cx q[4],q[6];
cx q[14],q[4];
cx q[22],q[9];
cx q[9],q[16];
cx q[15],q[11];
cx q[5],q[21];
cx q[14],q[20];
cx q[11],q[8];
cx q[12],q[0];
cx q[17],q[24];
cx q[5],q[12];
cx q[16],q[13];
cx q[16],q[5];
cx q[5],q[12];
cx q[7],q[16];
cx q[7],q[11];
cx q[4],q[10];
cx q[16],q[6];
cx q[14],q[2];
cx q[7],q[20];
cx q[5],q[24];
cx q[23],q[21];
cx q[7],q[11];
cx q[24],q[14];
cx q[16],q[24];
cx q[2],q[15];
cx q[23],q[22];
cx q[24],q[17];
cx q[0],q[10];
cx q[16],q[15];
cx q[23],q[24];
cx q[6],q[4];
cx q[22],q[7];
cx q[14],q[23];
cx q[13],q[23];
cx q[24],q[6];
cx q[5],q[17];
cx q[3],q[14];
cx q[6],q[24];
cx q[22],q[10];
cx q[9],q[11];
cx q[17],q[4];
cx q[7],q[11];
cx q[6],q[21];
cx q[13],q[23];
cx q[20],q[0];
cx q[18],q[12];
cx q[18],q[4];
cx q[7],q[15];
cx q[0],q[10];
cx q[13],q[16];
cx q[7],q[0];
cx q[10],q[19];
cx q[24],q[22];
cx q[5],q[13];
cx q[17],q[6];
cx q[8],q[16];
cx q[8],q[14];
cx q[15],q[1];
cx q[0],q[8];
cx q[20],q[13];
cx q[0],q[18];
cx q[17],q[7];
cx q[3],q[22];
cx q[5],q[9];
cx q[0],q[20];
cx q[1],q[2];
cx q[22],q[18];
cx q[12],q[10];
cx q[16],q[0];
cx q[5],q[0];
cx q[14],q[3];
cx q[16],q[20];
cx q[17],q[18];
cx q[24],q[4];
cx q[0],q[16];
cx q[18],q[14];
cx q[14],q[2];
cx q[21],q[1];
cx q[3],q[21];
cx q[17],q[13];
cx q[11],q[22];
cx q[21],q[20];
cx q[9],q[13];
cx q[19],q[20];
cx q[2],q[18];
cx q[20],q[23];
cx q[7],q[13];
cx q[2],q[23];
cx q[5],q[20];
cx q[23],q[12];
cx q[13],q[0];
cx q[11],q[10];
cx q[10],q[9];
cx q[15],q[23];
cx q[20],q[6];
cx q[6],q[14];
cx q[8],q[7];
cx q[22],q[18];
cx q[7],q[19];
cx q[1],q[11];
cx q[3],q[6];
cx q[17],q[21];
cx q[4],q[18];
cx q[2],q[14];
cx q[6],q[1];
cx q[10],q[13];
cx q[4],q[14];
cx q[4],q[12];
cx q[15],q[23];
cx q[24],q[7];
cx q[21],q[4];
cx q[17],q[15];
cx q[12],q[3];
cx q[11],q[9];
cx q[14],q[9];
cx q[7],q[0];
cx q[13],q[11];
cx q[10],q[0];
cx q[11],q[6];
cx q[11],q[5];
cx q[16],q[2];
cx q[0],q[5];
cx q[0],q[1];
cx q[18],q[23];
cx q[6],q[11];
cx q[21],q[12];
cx q[9],q[13];
cx q[12],q[4];
cx q[9],q[20];
cx q[7],q[24];
cx q[16],q[19];
cx q[17],q[1];
cx q[20],q[10];
cx q[11],q[5];
cx q[22],q[18];
cx q[21],q[19];
cx q[14],q[15];
cx q[18],q[14];
cx q[9],q[23];
cx q[10],q[21];
cx q[14],q[23];
cx q[23],q[5];
cx q[22],q[24];
cx q[9],q[5];
cx q[17],q[3];
cx q[11],q[21];
cx q[20],q[18];
cx q[20],q[4];
cx q[9],q[5];
cx q[19],q[24];
cx q[14],q[15];
cx q[7],q[23];
cx q[7],q[14];
cx q[6],q[10];
cx q[3],q[20];
cx q[5],q[19];
cx q[22],q[18];
cx q[17],q[9];
cx q[23],q[1];
cx q[3],q[6];
cx q[14],q[21];
cx q[4],q[24];
cx q[5],q[23];
cx q[9],q[4];
cx q[12],q[9];
cx q[14],q[11];
cx q[12],q[20];
cx q[21],q[22];
cx q[8],q[6];
cx q[23],q[11];
cx q[1],q[19];
cx q[10],q[22];
cx q[7],q[4];
cx q[18],q[2];
cx q[7],q[14];
cx q[7],q[17];
cx q[18],q[16];
cx q[0],q[22];
cx q[7],q[24];
cx q[1],q[14];
cx q[8],q[2];
cx q[15],q[21];
cx q[14],q[3];
cx q[1],q[20];
cx q[3],q[2];
cx q[19],q[22];
cx q[17],q[14];
cx q[5],q[1];
cx q[22],q[15];
cx q[15],q[19];
cx q[5],q[6];
cx q[11],q[10];
cx q[8],q[13];
cx q[20],q[15];
cx q[5],q[22];
cx q[15],q[8];
cx q[15],q[0];
cx q[11],q[14];
cx q[9],q[12];
cx q[4],q[3];
cx q[21],q[14];
cx q[11],q[14];
cx q[3],q[22];
cx q[3],q[19];
cx q[9],q[4];
cx q[4],q[0];
cx q[6],q[5];
cx q[10],q[11];
cx q[11],q[2];
cx q[2],q[16];
cx q[5],q[13];
cx q[5],q[9];
cx q[19],q[12];
cx q[13],q[24];
cx q[3],q[20];
cx q[10],q[14];
cx q[18],q[6];
cx q[20],q[2];
cx q[23],q[13];
cx q[3],q[10];
cx q[17],q[23];