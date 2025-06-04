clear
clc
close all

a = -1;
b =  1;
f = @(x) sin(x);
f_p = @(x,i) f(x).*(1 + (-1).^(i).*10.^(-4));
n_nodi = 22;
nodi = linspace(a,b,n_nodi);
griglia = linspace(a,b,100);

p_coeff_f = polyfit(nodi,f(nodi),n_nodi-1);
p_val_f = polyval(p_coeff_f,griglia);

fp_y = zeros(n_nodi,1);

for i=1:n_nodi
    f_p_y(i) = f_p(nodi(i),i);
end


p_coeff_fp = polyfit(nodi,f_p_y,n_nodi-1);
p_val_fp = polyval(p_coeff_fp,griglia);

norm(p_val_fp - p_val_fp,inf)