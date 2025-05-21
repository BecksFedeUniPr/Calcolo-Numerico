clear
clc
close all

a = -5;
b = 5;
grado = 35;
n_nodi = grado + 1;
nodi = linspace(a,b,n_nodi);



f = @(x) 1 ./(1 + x.^2);
valori = f(nodi);
coeff_poly = polyfit(nodi,valori,grado);
x = linspace(a,b,n_nodi*5);
poli_int = polyval(coeff_poly,x);

plot(nodi,valori,'*');
hold on;
plot(x,f(x));
hold on;
plot(x,poli_int);

abs(norm(f(x))-norm(poli_int,inf));

legend("Dati","funzione esatta","polinomio interpolatore")

figure(2)
nodi_chev = (a+b)/2 - ((b-a)/2)*...
    cos((2*(0:n_nodi-1)+1)*pi/(2*(n_nodi-1) +2));
valori_chev = f(nodi_chev);
coeff_poly_chev = polyfit(nodi_chev,valori_chev,grado);
poli_int_chev = polyval(coeff_poly_chev,x);

plot(nodi_chev,valori_chev,'*');
hold on;
plot(x,f(x));
hold on;
plot(x,poli_int_chev);

legend("Dati","funzione esatta","polinomio interpolatore");

Err = norm(f(x) - poli_int,inf);
Err2 = norm(f(x) - poli_int_chev,inf);
[Err Err2]