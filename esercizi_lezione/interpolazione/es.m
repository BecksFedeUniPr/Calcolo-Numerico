clear;clc;close all;

format long;

sforzi = [0 0.06 0.14 0.25 0.31 0.47 0.60 0.70]';
deformazioni = [0 0.08 0.14 0.20 0.23 0.25 0.28 0.29]';

%interpolazione composita
n_nodi = 8;
x = linspace(0,0.9);
valori_poli_int = interp1(sforzi, deformazioni, x)

%interpolazione semplice
coeff_poli = polyfit(sforzi, deformazioni, n_nodi - 1)
poli_int = polyval(coeff_poli, x)

%approssimazione nel senso dei min quadrati (retta)
coeff_poli = polyfit(sforzi, deformazioni, 1)
poli_int2 = polyval(coeff_poli, x)

%grafici
plot(sforzi, deformazioni,'*')
hold on
plot(x,poli_int, 'r')
hold on 
plot(x,poli_int2, 'b')
hold on 
plot(x, valori_poli_int, 'y')
