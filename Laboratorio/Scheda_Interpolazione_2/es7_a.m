clear
clc
close all
n = 10;
a = -1;
b = 1;
nodi = linspace(a,b,n);
nodi_chev = cos((2.*[0:n-1] + 1)*pi./(2*n));

n_points = 1000;
f = @(x) prod(abs((x - nodi(1:n))));
f_chev = @(x) prod(abs((x - nodi_chev(1:n))));
grid = linspace(a,b,n_points);
f_y = zeros(n_points,1);
f_y_chev = zeros(n_points,1);

for i=1:n_points
    f_y(i) = f(grid(i));
    f_y_chev(i) = f_chev(grid(i));
end

plot(grid,f_y)
hold on;
plot(grid,f_y_chev)
legend("Nodi Equispaziati","Nodi chev")