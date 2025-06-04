clear
clc
close all

a = 0;
b = 2;
grade = 5;
n_points_grid = 10000;
n_nodes = grade + 1;
nodes = linspace(a,b,n_nodes);
grid = linspace(a,b,1000);
f = @(x) exp(x).*sin(2.*x);

p_coeff = polyfit(nodes,f(nodes),n_nodes);
p_val = polyval(p_coeff,grid);

plot(nodes,f(nodes),'*');
hold on;
plot(grid,f(grid));
hold on;
plot(grid,p_val);
hold on

legend("Nodi di interpolazione","Funzione reale","Polinomio interpolatore")
