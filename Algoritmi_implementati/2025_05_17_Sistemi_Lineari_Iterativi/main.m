clear
clc
close all

A = [4 3; 
     6 3];

b = [10; 12];

x_mat = A \ b

fattorizzazioneLU(A,b')