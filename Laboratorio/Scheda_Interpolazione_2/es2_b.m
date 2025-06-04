clear
clc
close all

a = -5;
b = 5;
grade = 5;
n_points_grid = 10000;
n_nodes = grade + 1;
nodes = (a+b)/2 - (b-a)*cos((2.*[0:n_nodes]+1)*pi / (2*n_nodes+2)) / 2;

grid = linspace(a,b,1000);
f = @(x) 1 ./ (1 + x.^2);

p_coeff = polyfit(nodes,f(nodes),grade);
p_val = polyval(p_coeff,grid);

plot(nodes,f(nodes),'*');
hold on;
plot(grid,f(grid));
hold on;
plot(grid,p_val);
hold on

legend("Nodi di interpolazione","Funzione reale","Polinomio interpolatore")
