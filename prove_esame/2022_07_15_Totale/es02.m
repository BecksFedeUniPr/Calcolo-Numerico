clear
clc
close all

a = -1;
b = -1;
n = 100;

f = @(x) 1 + exp(-x.^2)./2;

error_trapz = [];
for n_interval=1:10:n*100
    x = linspace(a,b,n_interval);
    integral_trap_composto = sum( ((f(x(2:end))+f(x(1:end-1))) .* (x(2:end)-x(1:end-1))) ./ 2);
    error_trapz = [error_trapz abs(integral_trap_composto-quad(f,a,b))];
end

error_trapz'
