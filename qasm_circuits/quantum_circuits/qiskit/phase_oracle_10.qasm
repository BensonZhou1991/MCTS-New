OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
u3(pi,0,pi) q[1];
u3(pi,0,pi) q[3];
u3(pi,0,pi) q[5];
u3(pi,0,pi) q[7];
p(pi/128) q[7];
p(pi/128) q[8];
cx q[7],q[8];
u(0,0,-pi/128) q[8];
cx q[7],q[8];
cx q[7],q[6];
p(-pi/128) q[6];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[6],q[8];
u(0,0,pi/128) q[8];
cx q[6],q[8];
cx q[7],q[6];
p(pi/128) q[6];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[6],q[8];
u(0,0,-pi/128) q[8];
cx q[6],q[8];
cx q[6],q[5];
p(-pi/128) q[5];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[5],q[8];
u(0,0,pi/128) q[8];
cx q[5],q[8];
cx q[7],q[5];
p(pi/128) q[5];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[5],q[8];
u(0,0,-pi/128) q[8];
cx q[5],q[8];
cx q[6],q[5];
p(-pi/128) q[5];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[5],q[8];
u(0,0,pi/128) q[8];
cx q[5],q[8];
cx q[7],q[5];
p(pi/128) q[5];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[5],q[8];
u(0,0,-pi/128) q[8];
cx q[5],q[8];
cx q[5],q[4];
p(-pi/128) q[4];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,pi/128) q[8];
cx q[4],q[8];
cx q[7],q[4];
p(pi/128) q[4];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,-pi/128) q[8];
cx q[4],q[8];
cx q[6],q[4];
p(-pi/128) q[4];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,pi/128) q[8];
cx q[4],q[8];
cx q[7],q[4];
p(pi/128) q[4];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,-pi/128) q[8];
cx q[4],q[8];
cx q[5],q[4];
p(-pi/128) q[4];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,pi/128) q[8];
cx q[4],q[8];
cx q[7],q[4];
p(pi/128) q[4];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,-pi/128) q[8];
cx q[4],q[8];
cx q[6],q[4];
p(-pi/128) q[4];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,pi/128) q[8];
cx q[4],q[8];
cx q[7],q[4];
p(pi/128) q[4];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[4],q[8];
u(0,0,-pi/128) q[8];
cx q[4],q[8];
cx q[4],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[6],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[5],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[6],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[4],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[6],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[5],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[6],q[3];
p(-pi/128) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,pi/128) q[8];
cx q[3],q[8];
cx q[7],q[3];
p(pi/128) q[3];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[3],q[8];
u(0,0,-pi/128) q[8];
cx q[3],q[8];
cx q[3],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[5],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[4],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[5],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[3],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[5],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[4],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[5],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[6],q[2];
p(-pi/128) q[2];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,pi/128) q[8];
cx q[2],q[8];
cx q[7],q[2];
p(pi/128) q[2];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[2],q[8];
u(0,0,-pi/128) q[8];
cx q[2],q[8];
cx q[2],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[4],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[3],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[4],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[2],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[4],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[3],q[1];
p(-pi/128) q[1];
u3(pi,0,pi) q[3];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[4],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[5],q[1];
p(-pi/128) q[1];
u3(pi,0,pi) q[5];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
cx q[6],q[1];
p(-pi/128) q[1];
u(0,0,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,pi/128) q[8];
cx q[1],q[8];
cx q[7],q[1];
p(pi/128) q[1];
u3(pi,0,pi) q[7];
u(0,-pi/64,0) q[8];
p(pi/128) q[8];
cx q[1],q[8];
u(0,0,-pi/128) q[8];
cx q[1],q[8];
u3(pi,0,pi) q[1];
u(0,0,0) q[8];
