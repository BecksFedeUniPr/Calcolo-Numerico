clear
clc
close all

n = 5;
alpha = 10;
A = diag(ones(n,1));
A = A + diag(ones(n-1,1)*alpha,-1)