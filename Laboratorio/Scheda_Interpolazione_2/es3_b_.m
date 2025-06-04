clear
clc
close all

a = -3;
b = 3;
n_punti_griglia = 100;
griglia = linspace(a,b,n_punti_griglia);
f = @(x) abs(x-1);


err_interpolazione_polyfit = [];
err_interpolazione_vander = [];

for n=5.*[1,2,4,8]
    nodi = linspace(a,b,n);
    coeff_p = polyfit(nodi,f(nodi),n-1);
    p_val = polyval(coeff_p,griglia);
    vandermonde = vander(nodi);
    p_coeff_vander = vandermonde \ f(nodi)';
    p_val_vandermonde = polyval(p_coeff_vander,griglia);

    err_interpolazione_polyfit = [err_interpolazione_polyfit norm(p_val-f(griglia),inf)];
    err_interpolazione_vander = [err_interpolazione_vander norm(p_val_vandermonde-f(griglia),inf)];
end

err_interpolazione_polyfit
err_interpolazione_vander