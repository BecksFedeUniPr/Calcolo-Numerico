function [polinomio] = polinomio_lagrange(x,y,point)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    x
    y
    point
end

arguments (Output)
    polinomio
end

polinomio = 0;

for i=1:size(x,2)
    prod = 1;
    for j=[1:i-1 i+1:size(x,2)]
        prod = prod.*(point - x(j))/(x(i)-x(j));
    end
    polinomio = polinomio + y(i)*prod;
end
