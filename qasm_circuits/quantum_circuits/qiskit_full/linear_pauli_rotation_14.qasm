OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
r(0,pi/2) q[13];
u3(0.5,0,0) q[13];
cx q[0],q[13];
u3(-0.5,0,0) q[13];
cx q[0],q[13];
u3(1,0,0) q[13];
cx q[1],q[13];
u3(-1,0,0) q[13];
cx q[1],q[13];
u3(2,0,0) q[13];
cx q[2],q[13];
u3(-2,0,0) q[13];
cx q[2],q[13];
u3(4,0,0) q[13];
cx q[3],q[13];
u3(-4,0,0) q[13];
cx q[3],q[13];
u3(8,0,0) q[13];
cx q[4],q[13];
u3(-8,0,0) q[13];
cx q[4],q[13];
u3(16,0,0) q[13];
cx q[5],q[13];
u3(-16,0,0) q[13];
cx q[5],q[13];
u3(32,0,0) q[13];
cx q[6],q[13];
u3(-32,0,0) q[13];
cx q[6],q[13];
u3(64,0,0) q[13];
cx q[7],q[13];
u3(-64,0,0) q[13];
cx q[7],q[13];
u3(128,0,0) q[13];
cx q[8],q[13];
u3(-128,0,0) q[13];
cx q[8],q[13];
u3(256,0,0) q[13];
cx q[9],q[13];
u3(-256,0,0) q[13];
cx q[9],q[13];
u3(512,0,0) q[13];
cx q[10],q[13];
u3(-512,0,0) q[13];
cx q[10],q[13];
u3(1024,0,0) q[13];
cx q[11],q[13];
u3(-1024,0,0) q[13];
cx q[11],q[13];
u3(2048,0,0) q[13];
cx q[12],q[13];
u3(-2048,0,0) q[13];
cx q[12],q[13];
