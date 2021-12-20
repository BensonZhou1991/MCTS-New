OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
u(0,0,pi/16) q[0];
u(0,0,pi/16) q[1];
u(0,0,pi/16) q[2];
u3(pi/2,0,pi) q[3];
u3(pi/2,0,pi) q[4];
u3(pi/2,0,pi) q[5];
u3(pi/2,0,pi) q[6];
u3(pi/2,0,pi) q[7];
cx q[0],q[7];
u(0,0,-pi/16) q[7];
cx q[0],q[7];
u(0,0,pi/8) q[0];
cx q[0],q[6];
u(0,0,-pi/8) q[6];
cx q[0],q[6];
u(0,0,pi/4) q[0];
cx q[0],q[5];
u(0,0,-pi/4) q[5];
cx q[0],q[5];
u(0,0,pi/2) q[0];
cx q[0],q[4];
u(0,0,-pi/2) q[4];
cx q[0],q[4];
u(0,0,pi) q[0];
cx q[0],q[3];
u(0,0,-pi) q[3];
cx q[0],q[3];
u(0,0,pi) q[3];
u(0,0,pi/2) q[4];
u(0,0,pi/4) q[5];
u(0,0,pi/8) q[6];
u(0,0,pi/16) q[7];
cx q[1],q[7];
u(0,0,-pi/16) q[7];
cx q[1],q[7];
u(0,0,pi/8) q[1];
cx q[1],q[6];
u(0,0,-pi/8) q[6];
cx q[1],q[6];
u(0,0,pi/4) q[1];
cx q[1],q[5];
u(0,0,-pi/4) q[5];
cx q[1],q[5];
u(0,0,pi/2) q[1];
cx q[1],q[4];
u(0,0,-pi/2) q[4];
cx q[1],q[4];
u(0,0,pi) q[1];
cx q[1],q[3];
u(0,0,-pi) q[3];
cx q[1],q[3];
p(pi/32) q[1];
u(0,0,pi) q[3];
u(0,0,pi/2) q[4];
u(0,0,pi/4) q[5];
u(0,0,pi/8) q[6];
u(0,0,pi/16) q[7];
cx q[2],q[7];
u(0,0,-pi/16) q[7];
cx q[2],q[7];
u(0,0,pi/8) q[2];
cx q[2],q[6];
u(0,0,-pi/8) q[6];
cx q[2],q[6];
u(0,0,pi/4) q[2];
cx q[2],q[5];
u(0,0,-pi/4) q[5];
cx q[2],q[5];
u(0,0,pi/2) q[2];
cx q[2],q[4];
u(0,0,-pi/2) q[4];
cx q[2],q[4];
u(0,0,pi) q[2];
cx q[2],q[3];
u(0,0,-pi) q[3];
cx q[2],q[3];
p(pi/32) q[2];
u(0,0,pi) q[3];
u(0,0,pi/2) q[4];
u(0,0,pi/4) q[5];
u(0,0,pi/8) q[6];
u(0,0,pi/16) q[7];
cx q[1],q[7];
p(-pi/32) q[7];
cx q[1],q[7];
cx q[1],q[0];
p(-pi/32) q[0];
p(pi/32) q[7];
cx q[0],q[7];
p(pi/32) q[7];
cx q[0],q[7];
cx q[1],q[0];
p(pi/32) q[0];
p(pi/16) q[1];
cx q[1],q[6];
p(-pi/16) q[6];
cx q[1],q[6];
p(pi/16) q[6];
p(-pi/32) q[7];
cx q[0],q[7];
p(-pi/32) q[7];
cx q[0],q[7];
cx q[1],q[0];
p(-pi/16) q[0];
cx q[0],q[6];
p(pi/16) q[6];
cx q[0],q[6];
cx q[1],q[0];
p(pi/16) q[0];
p(pi/8) q[1];
cx q[1],q[5];
p(-pi/8) q[5];
cx q[1],q[5];
p(pi/8) q[5];
p(-pi/16) q[6];
cx q[0],q[6];
p(-pi/16) q[6];
cx q[0],q[6];
cx q[1],q[0];
p(-pi/8) q[0];
cx q[0],q[5];
p(pi/8) q[5];
cx q[0],q[5];
cx q[1],q[0];
p(pi/8) q[0];
p(pi/4) q[1];
cx q[1],q[4];
p(-pi/4) q[4];
cx q[1],q[4];
p(pi/4) q[4];
p(-pi/8) q[5];
cx q[0],q[5];
p(-pi/8) q[5];
cx q[0],q[5];
cx q[1],q[0];
p(-pi/4) q[0];
cx q[0],q[4];
p(pi/4) q[4];
cx q[0],q[4];
cx q[1],q[0];
p(pi/4) q[0];
p(pi/2) q[1];
cx q[1],q[3];
p(-pi/2) q[3];
cx q[1],q[3];
p(pi/2) q[3];
p(-pi/4) q[4];
cx q[0],q[4];
p(-pi/4) q[4];
cx q[0],q[4];
cx q[1],q[0];
p(-pi/2) q[0];
cx q[0],q[3];
p(pi/2) q[3];
cx q[0],q[3];
cx q[1],q[0];
p(pi/2) q[0];
p(-pi/2) q[3];
cx q[0],q[3];
p(-pi/2) q[3];
cx q[0],q[3];
p(pi/2) q[3];
p(pi/4) q[4];
p(pi/8) q[5];
p(pi/16) q[6];
p(pi/32) q[7];
cx q[2],q[7];
p(-pi/32) q[7];
cx q[2],q[7];
cx q[2],q[0];
p(-pi/32) q[0];
p(pi/32) q[7];
cx q[0],q[7];
p(pi/32) q[7];
cx q[0],q[7];
cx q[2],q[0];
p(pi/32) q[0];
p(pi/16) q[2];
cx q[2],q[6];
p(-pi/16) q[6];
cx q[2],q[6];
p(pi/16) q[6];
p(-pi/32) q[7];
cx q[0],q[7];
p(-pi/32) q[7];
cx q[0],q[7];
cx q[2],q[0];
p(-pi/16) q[0];
cx q[0],q[6];
p(pi/16) q[6];
cx q[0],q[6];
cx q[2],q[0];
p(pi/16) q[0];
p(pi/8) q[2];
cx q[2],q[5];
p(-pi/8) q[5];
cx q[2],q[5];
p(pi/8) q[5];
p(-pi/16) q[6];
cx q[0],q[6];
p(-pi/16) q[6];
cx q[0],q[6];
cx q[2],q[0];
p(-pi/8) q[0];
cx q[0],q[5];
p(pi/8) q[5];
cx q[0],q[5];
cx q[2],q[0];
p(pi/8) q[0];
p(pi/4) q[2];
cx q[2],q[4];
p(-pi/4) q[4];
cx q[2],q[4];
p(pi/4) q[4];
p(-pi/8) q[5];
cx q[0],q[5];
p(-pi/8) q[5];
cx q[0],q[5];
cx q[2],q[0];
p(-pi/4) q[0];
cx q[0],q[4];
p(pi/4) q[4];
cx q[0],q[4];
cx q[2],q[0];
p(pi/4) q[0];
p(pi/2) q[2];
cx q[2],q[3];
p(-pi/2) q[3];
cx q[2],q[3];
p(pi/2) q[3];
p(-pi/4) q[4];
cx q[0],q[4];
p(-pi/4) q[4];
cx q[0],q[4];
cx q[2],q[0];
p(-pi/2) q[0];
cx q[0],q[3];
p(pi/2) q[3];
cx q[0],q[3];
cx q[2],q[0];
p(pi/2) q[0];
p(pi/32) q[2];
p(-pi/2) q[3];
cx q[0],q[3];
p(-pi/2) q[3];
cx q[0],q[3];
p(pi/2) q[3];
p(pi/4) q[4];
p(pi/8) q[5];
p(pi/16) q[6];
p(pi/32) q[7];
cx q[2],q[7];
p(-pi/32) q[7];
cx q[2],q[7];
cx q[2],q[1];
p(-pi/32) q[1];
p(pi/32) q[7];
cx q[1],q[7];
p(pi/32) q[7];
cx q[1],q[7];
cx q[2],q[1];
p(pi/32) q[1];
p(pi/16) q[2];
cx q[2],q[6];
p(-pi/16) q[6];
cx q[2],q[6];
p(pi/16) q[6];
p(-pi/32) q[7];
cx q[1],q[7];
p(-pi/32) q[7];
cx q[1],q[7];
cx q[2],q[1];
p(-pi/16) q[1];
cx q[1],q[6];
p(pi/16) q[6];
cx q[1],q[6];
cx q[2],q[1];
p(pi/16) q[1];
p(pi/8) q[2];
cx q[2],q[5];
p(-pi/8) q[5];
cx q[2],q[5];
p(pi/8) q[5];
p(-pi/16) q[6];
cx q[1],q[6];
p(-pi/16) q[6];
cx q[1],q[6];
cx q[2],q[1];
p(-pi/8) q[1];
cx q[1],q[5];
p(pi/8) q[5];
cx q[1],q[5];
cx q[2],q[1];
p(pi/8) q[1];
p(pi/4) q[2];
cx q[2],q[4];
p(-pi/4) q[4];
cx q[2],q[4];
p(pi/4) q[4];
p(-pi/8) q[5];
cx q[1],q[5];
p(-pi/8) q[5];
cx q[1],q[5];
cx q[2],q[1];
p(-pi/4) q[1];
cx q[1],q[4];
p(pi/4) q[4];
cx q[1],q[4];
cx q[2],q[1];
p(pi/4) q[1];
p(pi/2) q[2];
cx q[2],q[3];
p(-pi/2) q[3];
cx q[2],q[3];
p(pi/2) q[3];
p(-pi/4) q[4];
cx q[1],q[4];
p(-pi/4) q[4];
cx q[1],q[4];
cx q[2],q[1];
p(-pi/2) q[1];
cx q[1],q[3];
p(pi/2) q[3];
cx q[1],q[3];
cx q[2],q[1];
p(pi/2) q[1];
p(-pi/2) q[3];
cx q[1],q[3];
p(-pi/2) q[3];
cx q[1],q[3];
p(pi/2) q[3];
u2(0,pi) q[3];
p(pi/4) q[4];
p(-pi/4) q[4];
cx q[4],q[3];
p(pi/4) q[3];
cx q[4],q[3];
p(-pi/4) q[3];
u2(0,pi) q[4];
p(pi/8) q[5];
p(-pi/8) q[5];
cx q[5],q[3];
p(pi/8) q[3];
cx q[5],q[3];
p(-pi/8) q[3];
p(-pi/4) q[5];
cx q[5],q[4];
p(pi/4) q[4];
cx q[5],q[4];
p(-pi/4) q[4];
u2(0,pi) q[5];
p(pi/16) q[6];
p(-pi/16) q[6];
cx q[6],q[3];
p(pi/16) q[3];
cx q[6],q[3];
p(-pi/16) q[3];
p(-pi/8) q[6];
cx q[6],q[4];
p(pi/8) q[4];
cx q[6],q[4];
p(-pi/8) q[4];
p(-pi/4) q[6];
cx q[6],q[5];
p(pi/4) q[5];
cx q[6],q[5];
p(-pi/4) q[5];
u2(0,pi) q[6];
p(pi/32) q[7];
p(-pi/32) q[7];
cx q[7],q[3];
p(pi/32) q[3];
cx q[7],q[3];
p(-pi/32) q[3];
p(-pi/16) q[7];
cx q[7],q[4];
p(pi/16) q[4];
cx q[7],q[4];
p(-pi/16) q[4];
p(-pi/8) q[7];
cx q[7],q[5];
p(pi/8) q[5];
cx q[7],q[5];
p(-pi/8) q[5];
p(-pi/4) q[7];
cx q[7],q[6];
p(pi/4) q[6];
cx q[7],q[6];
p(-pi/4) q[6];
u2(0,pi) q[7];
