clear
clc
close all

nodi_x = [-1 0 1 2];
nodi_y = [-0.1 2.03 3.5 6];

n = size(nodi_y,2);
grid = linspace(-1,2,100);
p_coeff = polyfit(nodi_x,nodi_y , n - 1);
p_val = polyval(p_coeff,grid);
p_coeff_retta = polyfit(nodi_x,nodi_y ,1);
p_val_retta = polyval(p_coeff_retta,grid);


plot(nodi_x,nodi_y,"*");
hold on;
plot(grid,p_val);
hold on;
plot(grid,p_val_retta);

title("Interpolazione")

legend("Nodi","Polinomio Cubico","Retta");

error = [abs(p_val_retta(1:end)-p_val(1:end))];

figure(2)
plot(grid,error)
title("Errore di interpolazione");
