OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
creg c[36];
cx q[8],q[11];
cx q[29],q[25];
cx q[20],q[33];
cx q[35],q[27];
cx q[21],q[26];
cx q[25],q[10];
cx q[23],q[33];
cx q[29],q[20];
cx q[16],q[11];
cx q[33],q[2];
cx q[14],q[0];
cx q[3],q[15];
cx q[33],q[31];
cx q[13],q[31];
cx q[0],q[1];
cx q[18],q[19];
cx q[30],q[1];
cx q[14],q[13];
cx q[17],q[22];
cx q[30],q[34];
cx q[5],q[32];
cx q[13],q[4];
cx q[20],q[8];
cx q[22],q[14];
cx q[8],q[17];
cx q[14],q[17];
cx q[15],q[33];
cx q[1],q[31];
cx q[14],q[3];
cx q[20],q[12];
cx q[31],q[26];
cx q[24],q[6];
cx q[12],q[27];
cx q[20],q[35];
cx q[23],q[35];
cx q[3],q[7];
cx q[9],q[25];
cx q[7],q[21];
cx q[33],q[14];
cx q[1],q[0];
cx q[1],q[4];
cx q[26],q[6];
cx q[5],q[13];
cx q[21],q[31];
cx q[10],q[29];
cx q[16],q[33];
cx q[31],q[4];
cx q[25],q[27];
cx q[8],q[11];
cx q[32],q[34];
cx q[9],q[21];
cx q[34],q[24];
cx q[17],q[22];
cx q[22],q[16];
cx q[35],q[30];
cx q[8],q[18];
cx q[22],q[16];
cx q[32],q[5];
cx q[27],q[16];
cx q[13],q[35];
cx q[20],q[16];
cx q[21],q[14];
cx q[28],q[2];
cx q[33],q[27];
cx q[14],q[0];
cx q[15],q[25];
cx q[28],q[11];
cx q[10],q[11];
cx q[1],q[32];
cx q[10],q[15];
cx q[34],q[11];
cx q[22],q[21];
cx q[8],q[27];
cx q[33],q[11];
cx q[13],q[12];
cx q[34],q[6];
cx q[0],q[12];
cx q[30],q[23];
cx q[0],q[20];
cx q[34],q[27];
cx q[34],q[24];
cx q[20],q[25];
cx q[0],q[26];
cx q[26],q[12];
cx q[24],q[11];
cx q[4],q[8];
cx q[1],q[20];
cx q[15],q[11];
cx q[24],q[13];
cx q[9],q[33];
cx q[12],q[34];
cx q[24],q[6];
cx q[31],q[2];
cx q[17],q[12];
cx q[30],q[23];
cx q[12],q[11];
cx q[29],q[34];
cx q[29],q[18];
cx q[23],q[27];
cx q[1],q[7];
cx q[13],q[6];
cx q[10],q[17];
cx q[31],q[23];
cx q[33],q[14];
cx q[21],q[35];
cx q[24],q[32];
cx q[28],q[4];
cx q[2],q[25];
cx q[34],q[32];
cx q[25],q[17];
cx q[29],q[7];
cx q[22],q[35];
cx q[2],q[25];
cx q[3],q[12];
cx q[0],q[3];
cx q[21],q[18];
cx q[16],q[6];
cx q[7],q[0];
cx q[16],q[23];
cx q[11],q[15];
cx q[21],q[16];
cx q[28],q[3];
cx q[27],q[1];
cx q[21],q[9];
cx q[5],q[0];
cx q[4],q[23];
cx q[11],q[1];
cx q[18],q[10];
cx q[28],q[15];
cx q[10],q[23];
cx q[26],q[0];
cx q[4],q[5];
cx q[5],q[14];
cx q[13],q[32];
cx q[23],q[16];
cx q[32],q[9];
cx q[27],q[23];
cx q[0],q[35];
cx q[14],q[31];
cx q[34],q[9];
cx q[28],q[22];
cx q[9],q[33];
cx q[23],q[10];
cx q[13],q[33];
cx q[29],q[5];
cx q[20],q[30];
cx q[1],q[16];
cx q[1],q[5];
cx q[25],q[33];
cx q[29],q[26];
cx q[6],q[0];
cx q[33],q[23];
cx q[29],q[2];
cx q[32],q[6];
cx q[18],q[29];
cx q[1],q[24];
cx q[23],q[1];
cx q[19],q[8];
cx q[34],q[24];
cx q[30],q[7];
cx q[13],q[4];
cx q[18],q[3];
cx q[7],q[32];
cx q[6],q[33];
cx q[12],q[10];
cx q[0],q[17];
cx q[12],q[17];
cx q[3],q[9];
cx q[35],q[0];
cx q[22],q[6];
cx q[15],q[6];
cx q[28],q[22];
cx q[5],q[17];
cx q[15],q[33];
cx q[21],q[16];
cx q[11],q[22];
cx q[23],q[17];
cx q[33],q[5];
cx q[30],q[9];
cx q[1],q[2];
cx q[22],q[18];
cx q[34],q[28];
cx q[1],q[25];
cx q[0],q[7];
cx q[8],q[12];
cx q[22],q[2];
cx q[14],q[19];
cx q[1],q[35];
cx q[24],q[18];
cx q[19],q[20];
cx q[8],q[11];
cx q[11],q[30];
cx q[2],q[30];
cx q[0],q[32];
cx q[17],q[14];
cx q[10],q[26];
cx q[21],q[19];
cx q[2],q[14];
cx q[8],q[22];
cx q[23],q[34];
cx q[3],q[29];
cx q[24],q[4];
cx q[23],q[9];
cx q[9],q[16];
cx q[26],q[13];
cx q[25],q[23];
cx q[9],q[16];
cx q[24],q[4];
cx q[12],q[34];
cx q[12],q[34];
cx q[11],q[12];
cx q[19],q[27];
cx q[21],q[25];
cx q[18],q[21];
cx q[23],q[12];
cx q[16],q[21];
cx q[33],q[8];
cx q[23],q[12];
cx q[6],q[13];
cx q[25],q[10];
cx q[18],q[27];
cx q[30],q[15];
cx q[5],q[0];
cx q[11],q[32];
cx q[11],q[2];
cx q[18],q[3];
cx q[18],q[4];
cx q[29],q[7];
cx q[25],q[28];
cx q[15],q[13];
cx q[34],q[11];
cx q[15],q[26];
cx q[4],q[8];
cx q[25],q[0];
cx q[1],q[9];
cx q[34],q[5];
cx q[21],q[35];
cx q[5],q[8];
cx q[5],q[27];
cx q[25],q[26];
cx q[34],q[30];
cx q[33],q[5];
cx q[9],q[19];
cx q[7],q[24];
cx q[15],q[18];
cx q[25],q[13];
cx q[11],q[1];
cx q[33],q[28];
cx q[25],q[30];
cx q[28],q[31];