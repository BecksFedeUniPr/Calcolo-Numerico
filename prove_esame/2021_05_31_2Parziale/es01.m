clear
clc
close all

f = @(x) sin(2.*x) + exp(x) + 1;
f_integrata = @(x) -cos(2.*x)/2 + exp(x) + x;
f_dom = linspace(-2,0.1);

nodi = [-2 -1.25 -0.7 0.1];
x = linspace(-2,0.1,1000);

coeff_pol = polyfit(nodi,f(nodi), size(nodi,2)-1);
coeff_pol_2 = polyfit(nodi,f(nodi), 2);

pol_interpolatore = polyval(coeff_pol,x);
pol_interpolatore_quad = polyval(coeff_pol_2,x);


figure('Name', 'Interpolazione', 'NumberTitle', 'off'); 
plot(nodi,f(nodi),"*");
hold on;
plot(x,f(x));
hold on;
plot(x,pol_interpolatore);
hold on;
plot(x,pol_interpolatore_quad);
hold on;

err1 = norm(pol_interpolatore-f(x),inf)
err2 = norm(pol_interpolatore_quad - f(x),inf)


legend("Nodi","Funzone Originale","Polinomio interpolatore","Pol Quadrato");
area_real = integral(f,-2 , 0.1)
P_int = polyint(pol_interpolatore);
area_lag = polyval(P_int,0.1) - polyval(P_int,-2);
err_area = abs(area_real - area_lag)

P_int_min = polyint(pol_interpolatore_quad);
area_lag_quad = polyval(P_int_min,0.1) - polyval(P_int_min,-2);

err_area_qua = abs(area_lag_quad - area_real)