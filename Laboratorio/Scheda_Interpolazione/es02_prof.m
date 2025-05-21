clear;clc;close all;
%Es2 interpolazione
n_nodi= 35;
nodi = linspace(-5,5,n_nodi)';
a=-5;
b=5;
nodi_ch = (a+b)/2 - ((b-a)/2)*...
    cos((2*[0:n_nodi-1]+1)*pi/(2*(n_nodi-1) +2));
f = @(x) 1./(1+x.^2);
valori = f(nodi);
coeff_poli = polyfit(nodi, valori, n_nodi - 1);
coeff_cheb = polyfit(nodi_ch,f(nodi_ch),n_nodi-1);
x = linspace(-5,5,n_nodi.*10);
poli_int = polyval(coeff_poli, x);
poli_cheb=polyval(coeff_cheb, x);

plot(nodi, valori, '*')
hold on
plot(x, f(x))
hold on 
plot(x, poli_int)
legend("dati", "funzione esatta", "polinomio interpolatore")

figure
plot(nodi_ch, f(nodi_ch), '*')
hold on
plot(x, f(x))
hold on 
plot(x, poli_cheb)
legend("dati", "funzione esatta", "polinomio cheb")

Err = norm(f(x) - poli_int,inf);
Err2 = norm(f(x) - poli_cheb,inf);
[Err Err2]