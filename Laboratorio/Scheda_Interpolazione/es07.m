clear
clc 
close all

%erroere dato anche dal massimo della derivata
%evidente differenza nei bordi 
x_plot = linspace(-1, 1, 1000);
n = 10; %[2, 4, 8, 16, 32]; 
a = -1;
b = 1;



for k = 1:length(n)
    xi = linspace(-1, 1, n+1);

    x_cheb = (a+b)/2 - ((b-a)/2)*...
    cos((2*[0:n]+1)*pi/(2*(n) +2));
    
    %dichiarazione
    omega = ones(size(x_plot));
    omega_cheb = ones(size(x_plot));

    %produttoria 
    for i = 1:length(xi)
        %effettivo calcolo 
        omega = omega .* (x_plot - xi(i));
        omega_cheb = omega_cheb .* (x_plot - x_cheb(i));
    end
    
    plot(x_plot, abs(omega), 'r')
    hold on;
    plot(x_plot, abs(omega_cheb), 'b')

    norm(omega_cheb-omega,inf)

    legend("Omega Xi","Omega chev");

end
