OPENQASM 2.0;
include "qelib1.inc";
gate multiplex1_reverse_reverse_dg_2017222082248 q0 { ry(0.07979345) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017360732424 q0 { ry(0.039121106) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017652792584 q0 { ry(0.0331433) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017361176456 q0 { ry(0.056280687) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017654131912 q0 { ry(0.052556318) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017040875144 q0 { ry(0.032315959) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017651296968 q0 { ry(0.037137351) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017652396360 q0 { ry(0.068132308) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017278617608 q0 { ry(0.066185459) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017656015368 q0 { ry(0.036877632) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(0.032232697) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017515324104 q0 { ry(0.052053879) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017653396232 q0 { ry(0.055227814) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017359082120 q0 { ry(0.0329975) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017651510408 q0 { ry(0.038581837) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017038391944 q0 { ry(0.075360959) q0; }
gate multiplex1_reverse_reverse_dg_2017038391112 q0 { ry(0.075986217) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017669382280 q0 { ry(0.038653359) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017659975816 q0 { ry(0.033011073) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017431930056 q0 { ry(0.055369335) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017431932168 q0 { ry(0.05210464) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_reverse_dg q0 { ry(0.032238258) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg_2017359000136 q0 { ry(0.036903373) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017653595592 q0 { ry(0.066457588) q0; }
gate multiplex1_reverse_reverse_dg_2017652886472 q0 { ry(0.068493184) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017655426696 q0 { ry(0.037178307) q0; }
gate multiplex1_reverse_reverse_reverse_reverse_dg q0 { ry(0.032324033) q0; }
gate multiplex1_reverse_reverse_reverse_dg_2017658909064 q0 { ry(0.05263728) q0; }
gate multiplex1_reverse_reverse_dg_2017360754312 q0 { ry(0.05646907) q0; }
gate multiplex1_reverse_reverse_reverse_dg q0 { ry(0.033164707) q0; }
gate multiplex1_reverse_reverse_dg q0 { ry(0.039216388) q0; }
gate multiplex1_reverse_dg q0 { ry(1.6433876) q0; }
qreg q[6];
multiplex1_reverse_dg q[0];
ry(1.6621251) q[1];
r(1.6835892,pi/2) q[2];
u3(1.6991713,0,0) q[3];
u(1.6861639,0,0) q[4];
u(1.6004768,0,0) q[5];
cx q[5],q[4];
u(0.23288642,0,0) q[4];
cx q[5],q[4];
cx q[4],q[3];
u3(0.15836801,0,0) q[3];
cx q[5],q[3];
u3(0.15360524,0,0) q[3];
cx q[4],q[3];
u3(0.1863357,0,0) q[3];
cx q[5],q[3];
cx q[3],q[2];
r(0.099172499,pi/2) q[2];
cx q[4],q[2];
r(0.091268863,pi/2) q[2];
cx q[3],q[2];
r(0.12677021,pi/2) q[2];
cx q[5],q[2];
r(0.12429977,pi/2) q[2];
cx q[3],q[2];
r(0.090193537,pi/2) q[2];
cx q[4],q[2];
r(0.097747468,pi/2) q[2];
cx q[3],q[2];
r(0.14164526,pi/2) q[2];
cx q[5],q[2];
cx q[2],q[1];
ry(0.061322882) q[1];
cx q[3],q[1];
ry(0.053852784) q[1];
cx q[2],q[1];
ry(0.083461383) q[1];
cx q[4],q[1];
ry(0.079415809) q[1];
cx q[2],q[1];
ry(0.052798155) q[1];
cx q[3],q[1];
ry(0.059138768) q[1];
cx q[2],q[1];
ry(0.098160702) q[1];
cx q[5],q[1];
ry(0.096913307) q[1];
cx q[2],q[1];
ry(0.05885646) q[1];
cx q[3],q[1];
ry(0.052696994) q[1];
cx q[2],q[1];
ry(0.078872906) q[1];
cx q[4],q[1];
ry(0.08274152) q[1];
cx q[2],q[1];
ry(0.053691325) q[1];
cx q[3],q[1];
ry(0.060947127) q[1];
cx q[2],q[1];
ry(0.10573761) q[1];
cx q[5],q[1];
cx q[1],q[0];
multiplex1_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017360754312 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg_2017658909064 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg_2017655426696 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017652886472 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg_2017653595592 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017359000136 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017431932168 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg_2017431930056 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017659975816 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg_2017669382280 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017038391112 q[0];
cx q[5],q[0];
multiplex1_reverse_reverse_reverse_dg_2017038391944 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017651510408 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017359082120 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017653396232 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017515324104 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_reverse_dg q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017656015368 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017278617608 q[0];
cx q[4],q[0];
multiplex1_reverse_reverse_reverse_dg_2017652396360 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017651296968 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_reverse_reverse_dg_2017040875144 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017654131912 q[0];
cx q[3],q[0];
multiplex1_reverse_reverse_reverse_dg_2017361176456 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_reverse_reverse_dg_2017652792584 q[0];
cx q[2],q[0];
multiplex1_reverse_reverse_reverse_dg_2017360732424 q[0];
cx q[1],q[0];
multiplex1_reverse_reverse_dg_2017222082248 q[0];
cx q[5],q[0];
