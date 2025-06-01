clear
clc
close all

x_nodi = [0.05 1 1.5];
y_nodi = [-19.977500520789933 -0.540300230586681398 -0.04715813444513527];

a = 0.05;
b = 1.5;

f = @(x) -cos(x)./x;

x = linspace(a,b,100);

p_coeff_polyfit = polyfit(x_nodi,y_nodi,size(x_nodi,2)-1);
p_val_polyfit = polyval(p_coeff_polyfit,x);

error_lagrange  = [];
error_polyfit = [];
grid = linspace(a,b,1000);

for n=5:5:50
    nodes = linspace(a,b,n);
    pol_lag = polinomio_lagrange(nodes,f(nodes),grid);
    error_lagrange = [error_lagrange norm(pol_lag - f(grid),inf)];
    coeff_p_polyfit = polyfit(nodes,f(nodes),n-1);
    pol_interp = polyval(coeff_p_polyfit, grid);
    error_polyfit = [error_polyfit norm(pol_interp-f(grid),inf)];
end

error_lagrange'
error_polyfit'

error = [error_lagrange;error_polyfit]'
plot(x_nodi,y_nodi,'*');
hold on;
plot(x,polinomio_lagrange(x_nodi,y_nodi,x));
hold on;
plot(x,f(x));
hold on;
plot(x,p_val_polyfit);



legend("Nodi","Polinomio Lagrange","Funzione originale","Polinomio Interpolato")
