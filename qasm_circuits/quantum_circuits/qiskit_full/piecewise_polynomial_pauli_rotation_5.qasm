OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
r(1,pi/2) q[2];
u3(1,0,0) q[2];
cx q[1],q[2];
u3(-1,0,0) q[2];
cx q[1],q[2];
u3(0.5,0,0) q[2];
cx q[0],q[2];
u3(-0.5,0,0) q[2];
cx q[0],q[2];
r(0,pi/2) q[2];
h q[2];
cx q[1],q[2];
tdg q[2];
cx q[0],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[0],q[2];
t q[2];
h q[2];
r(0,pi/2) q[2];
h q[2];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[0],q[1];
cx q[1],q[2];
tdg q[2];
cx q[0],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[0],q[2];
t q[2];
h q[2];
u(0,0,0) q[2];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[0],q[1];
u3(pi,0,pi) q[1];
u3(pi,0,pi) q[3];
h q[3];
u3(pi,0,pi) q[4];
cx q[4],q[3];
tdg q[3];
cx q[1],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
t q[4];
cx q[1],q[3];
t q[3];
h q[3];
u(0,0,0) q[3];
cx q[3],q[2];
u(0,0,0) q[2];
cx q[3],q[2];
p(0) q[3];
p(0) q[3];
u(0,0,0) q[2];
p(0) q[2];
cx q[3],q[2];
u(-1,0,0) q[2];
cx q[3],q[2];
u(1,0,0) q[2];
h q[2];
cx q[1],q[4];
tdg q[4];
t q[1];
cx q[1],q[4];
u3(pi,0,pi) q[4];
u3(pi,0,pi) q[4];
u3(pi,0,pi) q[1];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
p(0) q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(0) q[3];
p(0) q[3];
cx q[3],q[2];
u(1,0,0) q[2];
cx q[3],q[2];
u(-1,0,0) q[2];
h q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
p(0) q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(0) q[3];
p(0) q[3];
cx q[3],q[2];
u(-0.25,0,0) q[2];
cx q[3],q[2];
u(0.25,0,0) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
p(0) q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(0) q[3];
p(0) q[3];
cx q[3],q[2];
u(0.25,0,0) q[2];
cx q[3],q[2];
u(-0.25,0,0) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
u(0,0,0) q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
u(0,0,0) q[3];
cx q[3],q[2];
u(-1,0,0) q[2];
cx q[3],q[2];
p(0) q[3];
p(pi/2) q[3];
u(1,0,0) q[2];
p(pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(pi/4,0,0) q[2];
h q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(-pi/8) q[3];
cx q[3],q[2];
p(pi/8) q[2];
cx q[3],q[2];
p(-pi/8) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[2];
p(-pi/8) q[2];
cx q[3],q[2];
p(pi/8) q[2];
h q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(pi/8) q[3];
cx q[3],q[1];
p(-pi/8) q[1];
cx q[3],q[1];
p(-pi/8) q[3];
cx q[3],q[2];
p(pi/8) q[2];
cx q[3],q[2];
p(-pi/8) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[1];
h q[1];
cx q[0],q[1];
tdg q[1];
cx q[3],q[1];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[3],q[1];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[0];
p(-pi/8) q[0];
cx q[3],q[0];
p(-pi/8) q[3];
p(pi/8) q[0];
t q[1];
h q[1];
cx q[3],q[1];
p(pi/8) q[1];
cx q[3],q[1];
p(-pi/8) q[1];
h q[1];
cx q[0],q[1];
tdg q[1];
cx q[3],q[1];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[3],q[1];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[2];
p(-pi/8) q[2];
cx q[3],q[2];
p(0) q[3];
p(pi/2) q[3];
p(pi/8) q[2];
p(pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(0,0,0) q[3];
u(pi/4,0,0) q[2];
u(0,0,0) q[2];
cx q[3],q[2];
u(1,0,0) q[2];
cx q[3],q[2];
p(0) q[3];
p(pi/2) q[3];
u(-1,0,0) q[2];
p(pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
u(pi/4,0,0) q[2];
h q[2];
t q[1];
h q[1];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(-pi/8) q[3];
cx q[3],q[2];
p(pi/8) q[2];
cx q[3],q[2];
p(-pi/8) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[2];
p(-pi/8) q[2];
cx q[3],q[2];
p(pi/8) q[2];
h q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[1],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[1];
cx q[3],q[1];
t q[3];
tdg q[1];
cx q[3],q[1];
p(pi/8) q[3];
cx q[3],q[1];
p(-pi/8) q[1];
cx q[3],q[1];
p(-pi/8) q[3];
cx q[3],q[2];
p(pi/8) q[2];
cx q[3],q[2];
p(-pi/8) q[2];
h q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
cx q[0],q[2];
tdg q[2];
cx q[3],q[2];
t q[2];
h q[2];
t q[0];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[1];
h q[1];
cx q[0],q[1];
tdg q[1];
cx q[3],q[1];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[3],q[1];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[0];
p(-pi/8) q[0];
cx q[3],q[0];
p(-pi/8) q[3];
p(pi/8) q[0];
t q[1];
h q[1];
cx q[3],q[1];
p(pi/8) q[1];
cx q[3],q[1];
p(-pi/8) q[1];
h q[1];
cx q[0],q[1];
tdg q[1];
cx q[3],q[1];
t q[1];
cx q[0],q[1];
t q[0];
tdg q[1];
cx q[3],q[1];
cx q[3],q[0];
t q[3];
tdg q[0];
cx q[3],q[0];
p(pi/8) q[3];
cx q[3],q[2];
p(-pi/8) q[2];
cx q[3],q[2];
p(0) q[3];
p(pi/2) q[3];
p(pi/8) q[2];
p(pi/2) q[2];
cx q[3],q[2];
u(-pi/4,0,-pi/2) q[2];
cx q[3],q[2];
h q[3];
cx q[4],q[3];
tdg q[3];
u(pi/4,0,0) q[2];
t q[1];
h q[1];
u3(pi,0,pi) q[1];
cx q[1],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
t q[4];
cx q[1],q[3];
t q[3];
h q[3];
u3(pi,0,pi) q[3];
cx q[1],q[4];
tdg q[4];
t q[1];
cx q[1],q[4];
u3(pi,0,pi) q[4];
u3(pi,0,pi) q[1];