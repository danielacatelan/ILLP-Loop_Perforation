# ILLP-Loop_Perforation
Instruction Level Loop Perforation

The use of approximate computing (AC) has drawn the attention of software and processor designers by offering techniques ranging from the application level to the circuit level. CA techniques offer application acceleration, power dissipation savings and reduced memory consumption at the cost of inaccurate results.

A widely known AC technique is loop piercing (LP), which aims to reduce the amount of computational work by skipping loop iterations.

This project introduces an instruction-level loop piercing (ILLP) approach that relies on approximate hardware instructions.

The procedure addresses the tradeoff between accuracy and physical efficiency when using the loop drilling technique with a rough increment.

We've extended the ACCEPT compiler and SPIKE simulator workflows to generate and simulate applications with ILLP.

From a set of ten general-purpose applications, we evaluated the technique by comparing results for accuracy, number of instructions, execution time, and cycles with baseline code (no approximation optimizations) and compiler loop drilling. ACCEPT.

Our technique (ILLP) achieves a reduction of $27.35$\% in the number of instructions for the DIJKSTRA application (perforation degree=$2$). Punching the loop in the ACCEPT compiler saw a $7.74\%$ increase in the number of instructions for DIJKSTRA applications as well. The ILLP saw a $15.16\%$ reduction in the number of cycles (drilling grade=$1$) for the FLOYD application.

We provide the ten applications used in this project, separated by folders for each application. Each application presents source files for simulation with ILLP and AS.

For contact:
Daniela Luiza Catelan
daniela.catelan@ufms.br
