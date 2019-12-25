import numpy as np
from qiskit import *

"""
 inputs:  q[0], q[1], q[2] -> s0, s1, carry_in
 outputs: q[2], q[3] -> sum_out, carry_out
"""
circuit = QuantumCircuit(4, 2)

# Change values of inputs here
circuit.h(0)
circuit.x(1)
# The above code sets inputs to [(|0> + |1>)/√2, 1, 0]

circuit.ccx(0, 1, 3)

circuit.cx(0, 1)
circuit.ccx(1, 2, 3)
circuit.cx(1, 2)
circuit.cx(0, 1)

# Putting q[2] and q[3] into c[0] and c[1]
circuit.measure([2, 3], [0, 1])

circuit.draw()
