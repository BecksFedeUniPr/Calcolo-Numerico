clear
clc
close all

n = 100;

vect_main_diag = ones(n,1).*3;
vect_diag_u_l = ones(n-1,1);
A = diag(vect_main_diag) + diag(vect_diag_u_l,-1) + diag(vect_diag_u_l,1);
b = [5:5:495,399]';

x = ones(n,1);
tolleranza = 10^(-5);
D = diag(diag(A));
B = A - D;
D_inv = inv(D);
B = -inv(D)*B;
q = inv(D)*b;


while(norm((A*x-b),1)) > tolleranza
    x = B*x + q;
end



err = norm(A \ b - x,inf)