OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
u3(0,0,0) q[3];
u(28,0,0) q[3];
cx q[2],q[3];
u(-28,0,0) q[3];
cx q[2],q[3];
u(10,0,0) q[3];
cx q[1],q[3];
u(-10,0,0) q[3];
cx q[1],q[3];
u3(16,0,0) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[1],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[1],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u3(-16,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[1],q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[1],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[1],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(4,0,0) q[3];
cx q[0],q[3];
u(-4,0,0) q[3];
cx q[0],q[3];
u3(8,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[1],q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u3(-8,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[0],q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u3(4,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[0],q[2];
cx q[0],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u3(-4,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[0],q[1];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[0],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[0],q[1];
u(0,0,0) q[2];
u(0,0,0) q[2];
cx q[2],q[3];
u(1.7053026e-13,0,0) q[3];
cx q[2],q[3];
u(-1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
cx q[2],q[1];
u(0,0,0) q[1];
u(0,0,0) q[1];
cx q[1],q[3];
u(-1.7053026e-13,0,0) q[3];
cx q[1],q[3];
u(1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
cx q[2],q[1];
u(0,0,0) q[1];
u(0,0,0) q[1];
cx q[1],q[3];
u(1.7053026e-13,0,0) q[3];
cx q[1],q[3];
u(-1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
cx q[1],q[0];
u(0,0,0) q[0];
u(0,0,0) q[0];
cx q[0],q[3];
u(-1.7053026e-13,0,0) q[3];
cx q[0],q[3];
u(1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
cx q[2],q[0];
u(0,0,0) q[0];
u(0,0,0) q[0];
cx q[0],q[3];
u(1.7053026e-13,0,0) q[3];
cx q[0],q[3];
u(-1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
cx q[1],q[0];
u(0,0,0) q[0];
u(0,0,0) q[0];
cx q[0],q[3];
u(-1.7053026e-13,0,0) q[3];
cx q[0],q[3];
u(1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
u(pi,0,pi) q[1];
cx q[2],q[0];
u(0,0,0) q[0];
u(0,0,0) q[0];
cx q[0],q[3];
u(1.7053026e-13,0,0) q[3];
cx q[0],q[3];
u(-1.7053026e-13,0,0) q[3];
u(0,0,0) q[3];
u(pi,0,pi) q[2];
u(pi,0,pi) q[4];
u2(0,pi) q[4];
cx q[0],q[5];
u(pi,0,pi) q[5];
u(pi,0,pi) q[6];
u2(0,pi) q[6];
cx q[5],q[6];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
u2(0,pi) q[6];
u(pi,0,pi) q[6];
cx q[6],q[4];
u1(-pi/4) q[4];
cx q[1],q[5];
u1(-pi/4) q[5];
u1(pi/4) q[1];
cx q[1],q[5];
u(pi,0,pi) q[5];
u(pi,0,pi) q[5];
u(pi,0,pi) q[1];
u(pi,0,pi) q[1];
cx q[2],q[4];
u1(pi/4) q[4];
cx q[6],q[4];
u1(-pi/4) q[4];
u1(pi/4) q[6];
cx q[2],q[4];
u1(pi/4) q[4];
u2(0,pi) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-pi/2,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,0) q[4];
u(pi/2,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(14,0,0) q[3];
cx q[4],q[3];
u(-14,0,0) q[3];
u2(0,pi) q[3];
cx q[2],q[6];
u1(-pi/4) q[6];
u1(pi/4) q[2];
cx q[2],q[6];
u(pi,0,pi) q[6];
u(pi,0,pi) q[6];
u2(0,pi) q[6];
cx q[5],q[6];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
u2(0,pi) q[6];
u2(0,pi) q[6];
cx q[1],q[5];
u1(-pi/4) q[5];
u1(pi/4) q[1];
cx q[1],q[5];
u(pi,0,pi) q[5];
cx q[0],q[5];
u(pi,0,pi) q[1];
u(pi,0,pi) q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-14,0,0) q[3];
cx q[4],q[3];
u(14,0,0) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(5,0,0) q[3];
cx q[4],q[3];
u(-5,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-5,0,0) q[3];
cx q[4],q[3];
u(5,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
cx q[4],q[3];
u(8,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(-8,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[4];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[1];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(pi/4,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(-8,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(8,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[4];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[1];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(pi/4) q[1];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,0) q[4];
u(pi/4,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(2,0,0) q[3];
cx q[4],q[3];
u(-2,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-2,0,0) q[3];
cx q[4],q[3];
u(2,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
cx q[4],q[3];
u(4,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(-4,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[4];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[0];
u(0,0,-pi/8) q[0];
cx q[4],q[0];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[0];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(pi/4,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(-4,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(4,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[4];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[0];
u(0,0,-pi/8) q[0];
cx q[4],q[0];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[0];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[2];
cx q[4],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[0];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
p(0) q[4];
u1(pi/4) q[2];
u2(0,pi) q[2];
cx q[4],q[2];
p(0) q[2];
cx q[4],q[2];
p(0) q[4];
p(0) q[2];
cx q[4],q[2];
p(0) q[2];
cx q[4],q[2];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(pi/4,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(2,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(-2,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[4],q[1];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[0];
u(0,0,-pi/8) q[0];
cx q[4],q[0];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[0];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[4],q[1];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(pi/4,0,0) q[3];
u(0,0,0) q[3];
cx q[4],q[3];
u(-2,0,0) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(2,0,0) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
u(pi/4,0,0) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,pi/8) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[4];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[4];
cx q[4],q[3];
u(0,0,pi/8) q[3];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[4],q[1];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[0];
u(0,0,-pi/8) q[0];
cx q[4],q[0];
u(0,0,-pi/8) q[4];
u(0,0,pi/8) q[0];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[4],q[1];
u(0,0,pi/8) q[1];
cx q[4],q[1];
u(0,0,-pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[4],q[1];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,pi/8) q[4];
cx q[4],q[3];
u(0,0,-pi/8) q[3];
cx q[4],q[3];
u(0,0,0) q[4];
u(0,0,pi/2) q[4];
u(0,0,pi/8) q[3];
u(0,0,pi/2) q[3];
cx q[4],q[3];
u(-pi/4,0,-pi/2) q[3];
cx q[4],q[3];
p(0) q[4];
u(pi/4,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
u2(0,pi) q[0];
u1(pi/4) q[1];
u2(0,pi) q[1];
u2(0,pi) q[1];
p(0) q[2];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[2],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
cx q[2],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[2],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
u2(0,pi) q[1];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
p(0) q[4];
cx q[4],q[1];
p(0) q[1];
cx q[4],q[1];
p(0) q[4];
p(0) q[1];
cx q[4],q[1];
p(0) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[1];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u2(0,pi) q[1];
cx q[2],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
cx q[2],q[1];
u1(-pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[1];
u2(0,pi) q[1];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
p(0) q[4];
cx q[4],q[1];
p(0) q[1];
cx q[4],q[1];
p(0) q[4];
p(0) q[1];
cx q[4],q[1];
p(0) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[1];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[1],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
cx q[1],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
cx q[1],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
u2(0,pi) q[0];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
p(0) q[4];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
p(0) q[4];
p(0) q[0];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[0];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
cx q[2],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
cx q[2],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
u2(0,pi) q[0];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
p(0) q[4];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
p(0) q[4];
p(0) q[0];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[0];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
cx q[1],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
cx q[1],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
u2(0,pi) q[0];
u1(pi/4) q[1];
cx q[4],q[1];
u1(pi/4) q[4];
u1(-pi/4) q[1];
cx q[4],q[1];
p(0) q[4];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
p(0) q[4];
p(0) q[0];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[0];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u(pi,0,pi) q[1];
cx q[2],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
cx q[2],q[0];
u1(-pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[0];
u2(0,pi) q[0];
u1(pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[4];
u1(-pi/4) q[2];
cx q[4],q[2];
p(0) q[4];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
p(0) q[4];
p(0) q[0];
cx q[4],q[0];
p(0) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[4];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
p(0) q[3];
cx q[4],q[3];
p(0) q[3];
u2(0,pi) q[3];
p(0) q[0];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
u2(0,pi) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
cx q[0],q[3];
u1(-pi/4) q[3];
cx q[4],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
u1(pi/4) q[0];
cx q[4],q[0];
u1(pi/4) q[4];
u1(-pi/4) q[0];
cx q[4],q[0];
u(0,0,0) q[4];
u(0,0,0) q[4];
cx q[4],q[3];
u(-8.5265128e-14,0,0) q[3];
cx q[4],q[3];
u2(0,pi) q[4];
u(8.5265128e-14,0,0) q[3];
cx q[0],q[5];
u(pi,0,pi) q[5];
cx q[5],q[6];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
u2(0,pi) q[6];
u(pi,0,pi) q[6];
u(pi,0,pi) q[6];
cx q[6],q[4];
u1(-pi/4) q[4];
cx q[1],q[5];
u1(-pi/4) q[5];
u1(pi/4) q[1];
cx q[1],q[5];
u(pi,0,pi) q[5];
u(pi,0,pi) q[5];
u(pi,0,pi) q[1];
u(pi,0,pi) q[1];
u(pi,0,pi) q[2];
cx q[2],q[4];
u1(pi/4) q[4];
cx q[6],q[4];
u1(-pi/4) q[4];
u1(pi/4) q[6];
cx q[2],q[4];
u1(pi/4) q[4];
u2(0,pi) q[4];
u(pi,0,pi) q[4];
cx q[2],q[6];
u1(-pi/4) q[6];
u1(pi/4) q[2];
cx q[2],q[6];
u(pi,0,pi) q[6];
u2(0,pi) q[6];
cx q[5],q[6];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
cx q[5],q[6];
u1(pi/4) q[5];
u1(-pi/4) q[6];
cx q[1],q[6];
u1(pi/4) q[6];
u2(0,pi) q[6];
u(pi,0,pi) q[6];
cx q[1],q[5];
u1(-pi/4) q[5];
u1(pi/4) q[1];
cx q[1],q[5];
u(pi,0,pi) q[5];
cx q[0],q[5];
u(pi,0,pi) q[1];
u(pi,0,pi) q[2];