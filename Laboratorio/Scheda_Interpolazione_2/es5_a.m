clear
clc
close all

f = @(x) exp(x) + 1;
f_p = @(x,i) f(x) + (-1).^(i)*10^(-5);
a = -1;
b = 1;
grado  = 20;
n_nodi = grado + 1;
nodi = linspace(a,b,grado + 1);
n_points_grid = 100;
griglia = linspace(a,b,n_points_grid);

y = f(nodi);
vander = vander(nodi);
coeff_f = vander \ y';
p_val = polyval(coeff_f,griglia);

y_fp = zeros(n_nodi,1);
for i=1:n_nodi
    y_fp(i) = f_p(nodi(i),i);
end

coeff_fp = vander \ y_fp;

fp_val = polyval(coeff_fp,griglia);


err_max_coefficienti = norm(coeff_f-coeff_fp,inf)
err_max_pol_val = norm(p_val-fp_val,inf)

plot(griglia,p_val);
hold on;
plot(griglia,fp_val);

title("Confronto Polinomi");
legend("Polinomio Interpolatore","Polinomio Interpolatore Perturbato")