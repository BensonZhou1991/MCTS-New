OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
u3(pi,0,pi) q[1];
u3(pi,0,pi) q[3];
u3(pi,0,pi) q[5];
p(pi/32) q[5];
p(pi/32) q[6];
cx q[5],q[6];
u(0,0,-pi/32) q[6];
cx q[5],q[6];
cx q[5],q[4];
p(-pi/32) q[4];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[4],q[6];
u(0,0,pi/32) q[6];
cx q[4],q[6];
cx q[5],q[4];
p(pi/32) q[4];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[4],q[6];
u(0,0,-pi/32) q[6];
cx q[4],q[6];
cx q[4],q[3];
p(-pi/32) q[3];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[3],q[6];
u(0,0,pi/32) q[6];
cx q[3],q[6];
cx q[5],q[3];
p(pi/32) q[3];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[3],q[6];
u(0,0,-pi/32) q[6];
cx q[3],q[6];
cx q[4],q[3];
p(-pi/32) q[3];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[3],q[6];
u(0,0,pi/32) q[6];
cx q[3],q[6];
cx q[5],q[3];
p(pi/32) q[3];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[3],q[6];
u(0,0,-pi/32) q[6];
cx q[3],q[6];
cx q[3],q[2];
p(-pi/32) q[2];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,pi/32) q[6];
cx q[2],q[6];
cx q[5],q[2];
p(pi/32) q[2];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,-pi/32) q[6];
cx q[2],q[6];
cx q[4],q[2];
p(-pi/32) q[2];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,pi/32) q[6];
cx q[2],q[6];
cx q[5],q[2];
p(pi/32) q[2];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,-pi/32) q[6];
cx q[2],q[6];
cx q[3],q[2];
p(-pi/32) q[2];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,pi/32) q[6];
cx q[2],q[6];
cx q[5],q[2];
p(pi/32) q[2];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,-pi/32) q[6];
cx q[2],q[6];
cx q[4],q[2];
p(-pi/32) q[2];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,pi/32) q[6];
cx q[2],q[6];
cx q[5],q[2];
p(pi/32) q[2];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[2],q[6];
u(0,0,-pi/32) q[6];
cx q[2],q[6];
cx q[2],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[4],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[3],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[4],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[2],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[4],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[3],q[1];
p(-pi/32) q[1];
u3(pi,0,pi) q[3];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
cx q[4],q[1];
p(-pi/32) q[1];
u(0,0,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,pi/32) q[6];
cx q[1],q[6];
cx q[5],q[1];
p(pi/32) q[1];
u3(pi,0,pi) q[5];
u(0,-pi/16,0) q[6];
p(pi/32) q[6];
cx q[1],q[6];
u(0,0,-pi/32) q[6];
cx q[1],q[6];
u3(pi,0,pi) q[1];
u(0,0,0) q[6];
