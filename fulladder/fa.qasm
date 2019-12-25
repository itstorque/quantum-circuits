OPENQASM 2.0;
include "qelib1.inc";

// inputs:  q[0], q[1], q[2] -> s0, s1, carry_in
// outputs: q[2], q[3] -> sum_out, carry_out
qreg q[4];
creg c[5];

// Change values of inputs here
ccx q[0],q[1],q[3];
cx q[0],q[1];
ccx q[1],q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
