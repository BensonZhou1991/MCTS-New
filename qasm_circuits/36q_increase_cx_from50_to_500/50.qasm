OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
creg c[36];
cx q[31],q[27];
cx q[4],q[35];
cx q[7],q[16];
cx q[16],q[14];
cx q[7],q[25];
cx q[33],q[3];
cx q[25],q[0];
cx q[10],q[35];
cx q[13],q[3];
cx q[18],q[24];
cx q[33],q[0];
cx q[18],q[16];
cx q[4],q[9];
cx q[16],q[21];
cx q[19],q[27];
cx q[0],q[14];
cx q[12],q[7];
cx q[8],q[21];
cx q[29],q[18];
cx q[17],q[5];
cx q[2],q[12];
cx q[4],q[9];
cx q[14],q[13];
cx q[34],q[23];
cx q[28],q[14];
cx q[7],q[26];
cx q[28],q[35];
cx q[21],q[4];
cx q[8],q[25];
cx q[23],q[21];
cx q[0],q[6];
cx q[20],q[19];
cx q[26],q[12];
cx q[13],q[7];
cx q[28],q[12];
cx q[1],q[19];
cx q[31],q[28];
cx q[29],q[23];
cx q[35],q[13];
cx q[7],q[23];
cx q[10],q[11];
cx q[1],q[5];
cx q[24],q[34];
cx q[32],q[27];
cx q[1],q[2];
cx q[12],q[7];
cx q[1],q[6];
cx q[28],q[22];
cx q[6],q[5];
cx q[26],q[17];
cx q[27],q[26];
cx q[11],q[21];
cx q[20],q[19];
cx q[24],q[13];
cx q[31],q[14];
cx q[7],q[1];
cx q[4],q[29];
cx q[8],q[30];
cx q[1],q[13];
cx q[6],q[13];
cx q[22],q[14];
cx q[33],q[24];
cx q[4],q[19];
cx q[20],q[31];
cx q[15],q[34];
cx q[25],q[35];
cx q[14],q[17];
cx q[2],q[8];
cx q[5],q[13];
cx q[29],q[22];
cx q[18],q[14];
cx q[19],q[8];
cx q[29],q[0];
cx q[34],q[35];
cx q[26],q[5];
cx q[8],q[11];
cx q[24],q[7];
cx q[3],q[30];
cx q[0],q[34];
cx q[15],q[34];
cx q[8],q[2];
cx q[34],q[9];
cx q[1],q[8];
cx q[23],q[6];
cx q[21],q[27];
cx q[21],q[20];
cx q[25],q[4];
cx q[21],q[10];
cx q[5],q[10];
cx q[28],q[16];
cx q[16],q[30];
cx q[20],q[28];
cx q[9],q[29];
cx q[13],q[17];
cx q[35],q[4];
cx q[10],q[5];
cx q[16],q[23];
cx q[0],q[34];
cx q[29],q[35];
cx q[26],q[9];
cx q[26],q[30];
cx q[25],q[12];
cx q[23],q[10];
cx q[3],q[25];
cx q[12],q[19];
cx q[6],q[28];
cx q[19],q[4];
cx q[27],q[21];
cx q[9],q[16];
cx q[29],q[3];
cx q[11],q[25];
cx q[2],q[3];
cx q[12],q[32];
cx q[11],q[16];
cx q[1],q[31];
cx q[12],q[26];
cx q[4],q[29];
cx q[16],q[24];
cx q[30],q[8];
cx q[3],q[28];
cx q[27],q[18];
cx q[8],q[34];
cx q[26],q[17];
cx q[8],q[26];
cx q[1],q[7];
cx q[11],q[8];
cx q[18],q[0];
cx q[14],q[33];
cx q[25],q[19];
cx q[15],q[34];
cx q[13],q[6];
cx q[7],q[17];
cx q[20],q[28];
cx q[9],q[16];
cx q[10],q[16];
cx q[34],q[0];
cx q[6],q[30];
cx q[29],q[30];
cx q[0],q[17];
cx q[11],q[14];
cx q[12],q[4];
cx q[32],q[4];
cx q[22],q[30];
cx q[21],q[29];
cx q[23],q[26];
cx q[7],q[12];
cx q[9],q[2];
cx q[24],q[6];
cx q[9],q[34];
cx q[26],q[17];
cx q[34],q[21];
cx q[22],q[4];
cx q[10],q[15];
cx q[18],q[19];
cx q[19],q[2];
cx q[19],q[12];
cx q[22],q[32];
cx q[2],q[16];
cx q[8],q[33];
cx q[18],q[34];
cx q[33],q[8];
cx q[20],q[33];
cx q[1],q[28];
cx q[10],q[28];
cx q[14],q[25];
cx q[1],q[32];
cx q[0],q[22];
cx q[17],q[26];
cx q[17],q[7];
cx q[28],q[21];
cx q[11],q[4];
cx q[14],q[22];
cx q[0],q[14];
cx q[6],q[4];
cx q[8],q[28];
cx q[15],q[19];
cx q[23],q[20];
cx q[6],q[27];
cx q[16],q[26];
cx q[28],q[34];
cx q[22],q[19];
cx q[35],q[27];
cx q[28],q[30];
cx q[21],q[14];
cx q[3],q[5];
cx q[34],q[16];
cx q[17],q[24];
cx q[4],q[13];
cx q[0],q[15];
cx q[13],q[24];
cx q[22],q[21];
cx q[3],q[22];
cx q[28],q[10];
cx q[28],q[14];
cx q[29],q[35];
cx q[29],q[19];
cx q[6],q[33];
cx q[21],q[34];
cx q[19],q[18];
cx q[31],q[0];
cx q[5],q[17];
cx q[23],q[29];
cx q[15],q[3];
cx q[13],q[18];
cx q[0],q[6];
cx q[20],q[33];
cx q[5],q[29];
cx q[1],q[2];
cx q[31],q[34];
cx q[12],q[31];
cx q[25],q[29];
cx q[18],q[13];
cx q[29],q[20];
cx q[6],q[35];
cx q[26],q[21];
cx q[32],q[30];
cx q[7],q[1];
cx q[13],q[35];
cx q[5],q[18];
cx q[7],q[21];
cx q[24],q[32];
cx q[4],q[2];
cx q[2],q[0];
cx q[17],q[14];
cx q[23],q[6];
cx q[35],q[14];
cx q[2],q[4];
cx q[29],q[8];
cx q[23],q[26];
cx q[15],q[28];
cx q[27],q[11];
cx q[29],q[21];
cx q[4],q[11];
cx q[30],q[33];
cx q[17],q[19];
cx q[16],q[22];
cx q[12],q[4];
cx q[11],q[35];
cx q[26],q[19];
cx q[30],q[33];
cx q[29],q[11];
cx q[21],q[34];
cx q[19],q[10];
cx q[32],q[4];
cx q[34],q[11];
cx q[7],q[19];
cx q[15],q[0];
cx q[13],q[1];
cx q[17],q[19];
cx q[19],q[5];
cx q[11],q[14];
cx q[13],q[12];
cx q[4],q[0];
cx q[25],q[2];
cx q[3],q[33];
cx q[0],q[31];
cx q[8],q[2];
cx q[7],q[27];
cx q[0],q[19];
cx q[34],q[0];
cx q[26],q[34];
cx q[35],q[5];
cx q[14],q[21];
cx q[10],q[20];
cx q[24],q[21];
cx q[8],q[10];
cx q[12],q[34];
cx q[21],q[1];
cx q[13],q[23];
cx q[4],q[22];
cx q[32],q[26];
cx q[8],q[26];
cx q[21],q[3];
cx q[10],q[24];
cx q[9],q[1];
cx q[25],q[27];
cx q[0],q[5];
cx q[12],q[2];
cx q[28],q[0];
cx q[27],q[21];
cx q[27],q[5];
cx q[25],q[9];
cx q[35],q[6];
cx q[2],q[6];
cx q[15],q[29];
cx q[24],q[17];
cx q[11],q[9];
cx q[22],q[8];
cx q[10],q[15];
cx q[6],q[15];
cx q[15],q[11];
cx q[28],q[5];
cx q[33],q[15];
cx q[28],q[32];
cx q[10],q[11];
cx q[33],q[8];
cx q[25],q[16];
cx q[10],q[21];
cx q[20],q[8];
cx q[34],q[9];