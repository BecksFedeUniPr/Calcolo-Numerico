clear
clc
close all

x1 = [-1 -0.8 -0.5 -0.4 -0.3 -0.2];
x2 = flip(x1).*(-1);
x = horzcat(x1 , x2);

f = @(x) sqrt(1-x.^2);
integral_real = integral(f,-1,1);

integral = sum(f(x(2:end)-x(1:end-1)/2).*(x(2:end)-x(1:end-1)))
integral_trapz = trapz(x,f(x))

err = abs(integral_trapz-integral)

err_trapz = abs(integral_real-integral_trapz)
err_PMC = abs(integral_real - integral)