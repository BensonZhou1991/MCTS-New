OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
u(0,0,pi) q[0];
u(pi/2,0,pi) q[0];
u(pi,0,pi) q[0];
u(pi/2,0,pi) q[1];
u(pi,0,pi) q[1];
u(pi/2,0,pi) q[2];
u(pi,0,pi) q[2];
u(pi/2,0,pi) q[3];
u(pi,0,pi) q[3];
u(pi/2,0,pi) q[4];
u(pi,0,pi) q[4];
u(pi/2,0,pi) q[5];
u(pi,0,pi) q[5];
u1(pi/64) q[5];
u(pi/2,0,pi) q[6];
u(pi,0,pi) q[6];
u(pi/2,0,pi) q[6];
u3(pi/2,0,pi) q[6];
cx q[5],q[6];
u1(-pi/64) q[6];
cx q[5],q[6];
cx q[5],q[4];
u1(-pi/64) q[4];
u1(pi/64) q[6];
cx q[4],q[6];
u1(pi/64) q[6];
cx q[4],q[6];
cx q[5],q[4];
u1(pi/64) q[4];
u1(-pi/64) q[6];
cx q[4],q[6];
u1(-pi/64) q[6];
cx q[4],q[6];
cx q[4],q[3];
u1(-pi/64) q[3];
u1(pi/64) q[6];
cx q[3],q[6];
u1(pi/64) q[6];
cx q[3],q[6];
cx q[5],q[3];
u1(pi/64) q[3];
u1(-pi/64) q[6];
cx q[3],q[6];
u1(-pi/64) q[6];
cx q[3],q[6];
cx q[4],q[3];
u1(-pi/64) q[3];
u1(pi/64) q[6];
cx q[3],q[6];
u1(pi/64) q[6];
cx q[3],q[6];
cx q[5],q[3];
u1(pi/64) q[3];
u1(-pi/64) q[6];
cx q[3],q[6];
u1(-pi/64) q[6];
cx q[3],q[6];
cx q[3],q[2];
u1(-pi/64) q[2];
u1(pi/64) q[6];
cx q[2],q[6];
u1(pi/64) q[6];
cx q[2],q[6];
cx q[5],q[2];
u1(pi/64) q[2];
u1(-pi/64) q[6];
cx q[2],q[6];
u1(-pi/64) q[6];
cx q[2],q[6];
cx q[4],q[2];
u1(-pi/64) q[2];
u1(pi/64) q[6];
cx q[2],q[6];
u1(pi/64) q[6];
cx q[2],q[6];
cx q[5],q[2];
u1(pi/64) q[2];
u1(-pi/64) q[6];
cx q[2],q[6];
u1(-pi/64) q[6];
cx q[2],q[6];
cx q[3],q[2];
u1(-pi/64) q[2];
u1(pi/64) q[6];
cx q[2],q[6];
u1(pi/64) q[6];
cx q[2],q[6];
cx q[5],q[2];
u1(pi/64) q[2];
u1(-pi/64) q[6];
cx q[2],q[6];
u1(-pi/64) q[6];
cx q[2],q[6];
cx q[4],q[2];
u1(-pi/64) q[2];
u1(pi/64) q[6];
cx q[2],q[6];
u1(pi/64) q[6];
cx q[2],q[6];
cx q[5],q[2];
u1(pi/64) q[2];
u1(-pi/64) q[6];
cx q[2],q[6];
u1(-pi/64) q[6];
cx q[2],q[6];
cx q[2],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[4],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[3],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[4],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[2],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[4],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[3],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[4],q[1];
u1(-pi/64) q[1];
u1(pi/64) q[6];
cx q[1],q[6];
u1(pi/64) q[6];
cx q[1],q[6];
cx q[5],q[1];
u1(pi/64) q[1];
u1(-pi/64) q[6];
cx q[1],q[6];
u1(-pi/64) q[6];
cx q[1],q[6];
cx q[1],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[3],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[2],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[3],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[1],q[0];
u1(-pi/64) q[0];
u(pi,0,pi) q[1];
u(pi/2,0,pi) q[1];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[3],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[2],q[0];
u1(-pi/64) q[0];
u(pi,0,pi) q[2];
u(pi/2,0,pi) q[2];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[3],q[0];
u1(-pi/64) q[0];
u(pi,0,pi) q[3];
u(pi/2,0,pi) q[3];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
cx q[4],q[0];
u1(-pi/64) q[0];
u(pi,0,pi) q[4];
u(pi/2,0,pi) q[4];
u1(pi/64) q[6];
cx q[0],q[6];
u1(pi/64) q[6];
cx q[0],q[6];
cx q[5],q[0];
u1(pi/64) q[0];
u(pi,0,pi) q[5];
u(pi/2,0,pi) q[5];
u1(-pi/64) q[6];
cx q[0],q[6];
u1(-pi/64) q[6];
cx q[0],q[6];
u(pi,0,pi) q[0];
u(pi/2,0,pi) q[0];
u1(pi/64) q[6];
u3(pi/2,0,pi) q[6];
u(pi/2,0,pi) q[6];
u(pi,0,pi) q[6];
u(pi/2,0,pi) q[6];
