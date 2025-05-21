clear
clc
close all

a = 0;
b = 2;
grado = 5;
n_nodi = grado + 1;
nodi = linspace(a,b,n_nodi);

f = @(x) exp(x).*sin(2*x);
valori = f(nodi);
coeff_poly = polyfit(nodi,valori,grado);
x = linspace(0,2,n_nodi*5);
poli_int = polyval(coeff_poly,x);

plot(nodi,valori,'*');
hold on;
plot(x,f(x));
hold on;
plot(x,poli_int);

Err = norm(f(x)-poli_int,inf)

legend("Dati","funzione esatta","polinomio interpolatore")