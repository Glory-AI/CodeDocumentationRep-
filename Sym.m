%defining variables
syms R1 R2 R3 R4 Rx Ei  
%creating a matrix by rows to represent the nodal equations
Y = sym(zeros(2,2));
Y(1,:) = [1/R1 + 1/Rx + 1/R3, -1/Rx];
Y(2,:) = [-1/Rx, 1/R2 + 1/Rx + 1/R4];
  
%current source vector representing current entering from the voltage
% source Ei through resistors R1 and R
Is= [Ei/R1 ; Ei/R2];
%solve for node voltages
%inverse of admittance (Y) is resistance which when multiplied by Is will
%give symbolic expression for each node voltage;
% V is a 2×1 vector of node voltages.
V= inv(Y) * Is;
%Voltage accross Rx is the difference between the node 1 and node 2 voltages
Vrx= V(1) - V(2);
disp("Unbalanced Bridge Voltage")
Vrx= simplify(Vrx); pretty(Vrx)
%disp(Vrx)

