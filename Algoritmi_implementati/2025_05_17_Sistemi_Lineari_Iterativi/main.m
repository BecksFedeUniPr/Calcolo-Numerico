clear
clc
close all

A = [4, 1, 2;
     1, 3, 1;
     2, 1, 5];

sol = ones(3,1);

tolleranza = 10^(-5);

b = A*sol;

x_mat = A \ b

x_jac = jacob_residuo(A,b,tolleranza,sol)


