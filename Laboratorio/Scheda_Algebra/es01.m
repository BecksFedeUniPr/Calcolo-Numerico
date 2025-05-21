clear
clc
close all

c = 1:2:8;
a = 1:2:10;

A = diag(a);

c_up = diag(c,1);
c_low = diag(c,-1);

A = A + c_up + c_low;

A

