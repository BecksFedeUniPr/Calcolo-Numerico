clear
clc
close all

A = [4, 1, 2;
     1, 3, 1;
     2, 1, 5];

b = [7; 5; 8];

tolleranza = 10^(-6);

x = 1:2:6;

x_mat = A \ b

x_jac = jacob_residuo(A,b,tolleranza,x)


