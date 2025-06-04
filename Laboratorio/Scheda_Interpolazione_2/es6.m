clear
clc
close all;

nodo_searched_y = 0.6;
nodi_x = [0.49 0.64 0.81];
nodi_y = [0.7 0.8 0.9];

n_nodi = length(nodi_x);
grado = n_nodi - 1;
p_coeff = polyfit(nodi_x,nodi_y,grado);
root = polyval(p_coeff,0.36);
error_sqrt = abs(sqrt(0.36)-root)


nodo_searched_y = 0.6;
nodi_x = [0.36 0.49 0.64 0.81];
nodi_y = [0.6 0.7 0.8 0.9];

n_nodi = length(nodi_x);
grado = n_nodi - 1;
p_coeff = polyfit(nodi_x,nodi_y,grado);
root = polyval(p_coeff,0.36);
error_sqrt = abs(sqrt(0.36)-root)