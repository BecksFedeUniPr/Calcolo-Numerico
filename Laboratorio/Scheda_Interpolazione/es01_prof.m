clear;clc;close all;
%Es1 interpolazione
n_nodi= 6;
nodi = linspace(0,2,n_nodi)';
f = @(x) exp(x).*sin(2*x);
valori = f(nodi);
coeff_poli = polyfit(nodi, valori, n_nodi -1);
x = linspace(0,2,n_nodi.*5);
poli_int = polyval(coeff_poli, x);


plot(nodi, valori, '*');
hold on
plot(x, f(x));
hold on
plot(x, poli_int);
legend("dati", "funzione esatta", "polinomio interpolatore")

Err = norm(f(x) - poli_int,inf)
