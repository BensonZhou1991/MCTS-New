OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
u3(0,0,0) q[2];
u(10,0,0) q[2];
cx q[1],q[2];
u(-10,0,0) q[2];
cx q[1],q[2];
u(4,0,0) q[2];
cx q[0],q[2];
u(-4,0,0) q[2];
cx q[0],q[2];
u3(4,0,0) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u3(-4,0,0) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[0],q[1];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[0],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u(0,0,0) q[2];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[0],q[1];
u(pi,0,pi) q[1];
u(pi,0,pi) q[3];
u2(0,pi) q[3];
cx q[0],q[4];
u(pi,0,pi) q[4];
cx q[4],q[3];
u1(-pi/4) q[3];
cx q[1],q[3];
u1(pi/4) q[3];
cx q[4],q[3];
u1(-pi/4) q[3];
u1(pi/4) q[4];
cx q[1],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(0,0,0) q[3];
cx q[3],q[2];
u(-pi/2,0,0) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(0,0,0) q[3];
u(pi/2,0,0) q[2];
u(0,0,0) q[2];
cx q[3],q[2];
u(5,0,0) q[2];
cx q[3],q[2];
u(-5,0,0) q[2];
u2(0,pi) q[2];
cx q[1],q[4];
u1(-pi/4) q[4];
u1(pi/4) q[1];
cx q[1],q[4];
u(pi,0,pi) q[4];
cx q[0],q[4];
u(pi,0,pi) q[1];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u(0,0,0) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,0) q[3];
u(0,0,0) q[3];
cx q[3],q[2];
u(-5,0,0) q[2];
cx q[3],q[2];
u(5,0,0) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u(0,0,0) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,0) q[3];
u(0,0,0) q[3];
cx q[3],q[2];
u(2,0,0) q[2];
cx q[3],q[2];
u(-2,0,0) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u(0,0,0) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,0) q[3];
u(0,0,0) q[3];
cx q[3],q[2];
u(-2,0,0) q[2];
cx q[3],q[2];
u(2,0,0) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u(0,0,0) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,0) q[3];
cx q[3],q[2];
u(2,0,0) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(0,0,pi/2) q[3];
u(-2,0,0) q[2];
u(0,0,pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(pi/4,0,0) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[3];
cx q[3],q[2];
u(0,0,pi/8) q[2];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
cx q[3],q[2];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,pi/8) q[3];
cx q[3],q[1];
u(0,0,-pi/8) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[3];
cx q[3],q[2];
u(0,0,pi/8) q[2];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[3],q[1];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[0];
u(0,0,-pi/8) q[0];
cx q[3],q[0];
u(0,0,-pi/8) q[3];
u(0,0,pi/8) q[0];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[3],q[1];
u(0,0,pi/8) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[3],q[1];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(0,0,pi/2) q[3];
u(0,0,pi/8) q[2];
u(0,0,pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(pi/4,0,0) q[2];
u(0,0,0) q[2];
cx q[3],q[2];
u(-2,0,0) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(0,0,pi/2) q[3];
u(2,0,0) q[2];
u(0,0,pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(pi/4,0,0) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[3];
cx q[3],q[2];
u(0,0,pi/8) q[2];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
cx q[3],q[2];
u(0,0,pi/8) q[2];
u2(0,pi) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[1],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[3];
u1(-pi/4) q[1];
cx q[3],q[1];
u(0,0,pi/8) q[3];
cx q[3],q[1];
u(0,0,-pi/8) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[3];
cx q[3],q[2];
u(0,0,pi/8) q[2];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
u2(0,pi) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
cx q[0],q[2];
u1(-pi/4) q[2];
cx q[3],q[2];
u1(pi/4) q[2];
u2(0,pi) q[2];
u1(pi/4) q[0];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[3],q[1];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[0];
u(0,0,-pi/8) q[0];
cx q[3],q[0];
u(0,0,-pi/8) q[3];
u(0,0,pi/8) q[0];
u1(pi/4) q[1];
u2(0,pi) q[1];
cx q[3],q[1];
u(0,0,pi/8) q[1];
cx q[3],q[1];
u(0,0,-pi/8) q[1];
u2(0,pi) q[1];
cx q[0],q[1];
u1(-pi/4) q[1];
cx q[3],q[1];
u1(pi/4) q[1];
cx q[0],q[1];
u1(pi/4) q[0];
u1(-pi/4) q[1];
cx q[3],q[1];
cx q[3],q[0];
u1(pi/4) q[3];
u1(-pi/4) q[0];
cx q[3],q[0];
u(0,0,pi/8) q[3];
cx q[3],q[2];
u(0,0,-pi/8) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(0,0,pi/2) q[3];
u(0,0,pi/8) q[2];
u(0,0,pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u2(0,pi) q[3];
u(pi/4,0,0) q[2];
cx q[0],q[4];
u(pi,0,pi) q[4];
cx q[4],q[3];
u1(-pi/4) q[3];
u1(pi/4) q[1];
u2(0,pi) q[1];
u(pi,0,pi) q[1];
cx q[1],q[3];
u1(pi/4) q[3];
cx q[4],q[3];
u1(-pi/4) q[3];
u1(pi/4) q[4];
cx q[1],q[3];
u1(pi/4) q[3];
u2(0,pi) q[3];
u(pi,0,pi) q[3];
cx q[1],q[4];
u1(-pi/4) q[4];
u1(pi/4) q[1];
cx q[1],q[4];
u(pi,0,pi) q[4];
cx q[0],q[4];
u(pi,0,pi) q[1];