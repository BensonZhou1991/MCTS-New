OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
creg c[36];
cx q[32],q[8];
cx q[0],q[27];
cx q[24],q[32];
cx q[8],q[32];
cx q[7],q[4];
cx q[35],q[5];
cx q[12],q[1];
cx q[35],q[3];
cx q[15],q[20];
cx q[34],q[0];
cx q[9],q[22];
cx q[7],q[31];
cx q[11],q[3];
cx q[20],q[15];
cx q[30],q[23];
cx q[7],q[12];
cx q[5],q[26];
cx q[0],q[25];
cx q[18],q[17];
cx q[17],q[23];
cx q[4],q[11];
cx q[2],q[14];
cx q[17],q[14];
cx q[20],q[12];
cx q[33],q[6];
cx q[25],q[10];
cx q[5],q[28];
cx q[17],q[18];
cx q[30],q[1];
cx q[15],q[3];
cx q[7],q[3];
cx q[16],q[19];
cx q[25],q[20];
cx q[14],q[19];
cx q[22],q[3];
cx q[15],q[10];
cx q[11],q[23];
cx q[22],q[10];
cx q[32],q[33];
cx q[18],q[24];
cx q[29],q[13];
cx q[5],q[14];
cx q[35],q[4];
cx q[16],q[26];
cx q[11],q[25];
cx q[11],q[16];
cx q[7],q[15];
cx q[25],q[3];
cx q[12],q[18];
cx q[2],q[8];
cx q[9],q[8];
cx q[10],q[29];
cx q[3],q[5];
cx q[13],q[14];
cx q[33],q[18];
cx q[10],q[14];
cx q[13],q[5];
cx q[25],q[16];
cx q[27],q[20];
cx q[33],q[10];
cx q[23],q[34];
cx q[29],q[4];
cx q[13],q[6];
cx q[27],q[10];
cx q[23],q[9];
cx q[23],q[21];
cx q[13],q[30];
cx q[23],q[14];
cx q[13],q[14];
cx q[23],q[6];
cx q[29],q[33];
cx q[20],q[33];
cx q[21],q[18];
cx q[25],q[22];
cx q[23],q[8];
cx q[20],q[32];
cx q[25],q[15];
cx q[3],q[21];
cx q[1],q[4];
cx q[24],q[23];
cx q[22],q[27];
cx q[18],q[12];
cx q[6],q[2];
cx q[7],q[12];
cx q[5],q[29];
cx q[34],q[13];
cx q[22],q[21];
cx q[14],q[32];
cx q[21],q[0];
cx q[4],q[16];
cx q[25],q[9];
cx q[26],q[20];
cx q[7],q[9];
cx q[20],q[22];
cx q[8],q[10];
cx q[8],q[19];
cx q[9],q[19];
cx q[15],q[7];
cx q[23],q[10];
cx q[0],q[31];
cx q[34],q[30];
cx q[7],q[0];
cx q[5],q[24];
cx q[16],q[15];
cx q[26],q[5];
cx q[4],q[9];
cx q[21],q[8];
cx q[10],q[12];
cx q[23],q[34];
cx q[30],q[26];
cx q[25],q[13];
cx q[16],q[21];
cx q[32],q[23];
cx q[25],q[22];
cx q[35],q[8];
cx q[11],q[15];
cx q[19],q[0];
cx q[24],q[17];
cx q[20],q[3];
cx q[24],q[4];
cx q[15],q[23];
cx q[31],q[8];
cx q[24],q[2];
cx q[2],q[33];
cx q[22],q[12];
cx q[3],q[21];
cx q[4],q[25];
cx q[30],q[22];
cx q[5],q[1];
cx q[29],q[28];
cx q[34],q[4];
cx q[7],q[17];
cx q[33],q[28];
cx q[18],q[21];
cx q[7],q[20];
cx q[18],q[35];
cx q[22],q[33];
cx q[9],q[30];
cx q[30],q[4];
cx q[32],q[14];
cx q[6],q[33];
cx q[3],q[13];
cx q[7],q[3];
cx q[17],q[24];
cx q[7],q[33];
cx q[23],q[26];
cx q[2],q[18];
cx q[14],q[33];
cx q[35],q[5];
cx q[18],q[7];
cx q[24],q[18];
cx q[26],q[16];
cx q[33],q[32];
cx q[15],q[0];
cx q[3],q[0];
cx q[23],q[21];
cx q[20],q[5];
cx q[3],q[21];
cx q[28],q[35];
cx q[22],q[35];
cx q[29],q[24];
cx q[19],q[21];
cx q[23],q[18];
cx q[23],q[25];
cx q[19],q[22];
cx q[20],q[5];
cx q[34],q[13];
cx q[21],q[15];
cx q[13],q[29];
cx q[1],q[11];
cx q[32],q[17];
cx q[23],q[22];
cx q[4],q[6];
cx q[11],q[17];
cx q[14],q[26];
cx q[21],q[13];
cx q[32],q[9];
cx q[20],q[24];
cx q[34],q[17];
cx q[3],q[30];
cx q[32],q[9];
cx q[0],q[15];
cx q[28],q[20];
cx q[14],q[30];
cx q[21],q[16];
cx q[34],q[15];
cx q[12],q[21];
cx q[6],q[28];
cx q[14],q[7];
cx q[21],q[5];
cx q[1],q[19];
cx q[19],q[15];
cx q[18],q[22];
cx q[19],q[18];
cx q[17],q[10];
cx q[18],q[3];
cx q[16],q[11];
cx q[20],q[8];
cx q[21],q[3];
cx q[14],q[33];
cx q[20],q[15];
cx q[2],q[20];
cx q[14],q[5];
cx q[8],q[24];
cx q[15],q[2];
cx q[18],q[22];
cx q[25],q[17];
cx q[23],q[20];
cx q[23],q[8];
cx q[8],q[10];
cx q[34],q[16];
cx q[31],q[22];
cx q[9],q[6];
cx q[1],q[18];
cx q[21],q[10];
cx q[20],q[4];
cx q[32],q[12];
cx q[8],q[16];
cx q[5],q[31];
cx q[29],q[24];
cx q[6],q[24];
cx q[5],q[2];
cx q[13],q[31];
cx q[1],q[19];
cx q[5],q[8];
cx q[0],q[24];
cx q[0],q[32];
cx q[9],q[6];
cx q[10],q[8];
cx q[18],q[3];
cx q[25],q[6];
cx q[6],q[16];
cx q[35],q[28];
cx q[22],q[21];
cx q[21],q[2];
cx q[14],q[10];
cx q[34],q[31];
cx q[22],q[28];
cx q[34],q[5];
cx q[27],q[17];
cx q[10],q[31];
cx q[28],q[18];
cx q[6],q[8];
cx q[30],q[17];
cx q[9],q[30];
cx q[35],q[18];
cx q[23],q[8];
cx q[0],q[8];
cx q[14],q[0];
cx q[6],q[22];