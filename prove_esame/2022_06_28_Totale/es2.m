clear
clc
close all

betha = 0.5;
A = [1 1 betha ; -1, 2, 0.2 ; 1 -0.1 2];
b = [1:3]';
n = size(A,1);
x_mat = A \ b;


x_jac = ones(n,1);
%A = D + C;

tolleranza = 10^(-3);
D = diag(diag(A));
C = A - D;
D_inv = inv(D);


while norm(A*x_jac - b ,inf) > tolleranza
    x_jac = D_inv*(b- C*x_jac);
end

x_mat

x_jac
