clear
clc
close all

a =pi/2;
b = 5*pi/2;

formula_trap = @(f,a,b) (b-a)*(f(a) + f(b))/2;

f = @(x) sin(x);

x = linspace(-2*pi,2*pi,100);

integral_trapz = formula_trap(f,a,b)
integral_esatto = integral(f,a,b)

(5*pi/2 - pi/2)*(sin(5*pi/2) + sin(pi/2))/2
(cos(5*pi/2) - cos(pi/2))