clear
clc
close all
n = 10;
a = -1;
b = 1;
nodi = cos((2.*[0:n-1] + 1)*pi./(2*(n-1)+2));

n_points = 1000;
f = @(x) prod(abs((x - nodi(1:n))));
grid = linspace(a,b,n_points);
f_y = zeros(n,1);

for i=1:n_points
    f_y(i) = f(grid(i));
end

plot(grid,f_y)