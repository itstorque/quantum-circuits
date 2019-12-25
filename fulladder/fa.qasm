OPENQASM 2.0;
include "qelib1.inc";

// inputs:  q[0], q[1], q[2] -> s0, s1, carry_in
// outputs: q[2], q[3] -> sum_out, carry_out
qreg q[4];
creg c[2];

// Change values of inputs here

h q[0];
x q[1];

// The above code sets inputs to [(|0> + |1>)/√2, 1, 0]

ccx q[0],q[1],q[3];
cx q[0],q[1];
ccx q[1],q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
measure q[2] -> c[0];
measure q[3] -> c[1];
