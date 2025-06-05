clear
clc
close all

x = [-1 1 sqrt(2) 2];
y = [tan(2) 1 2*sqrt(2) exp(2)];


grid = linspace(-1,2,1000);
p = polyfit(x,y,length(x) - 1);
p_val = polyval(p,grid);


p_mq = polyfit(x,y,1);
p_mq_val = polyval(p_mq,grid);

p_ICL = interp1(x,y,grid);

plot(x,y,'*');
hold on;
plot(grid,p_mq_val);
hold on;
plot(grid,p_ICL);

legend("Nodi","Polinomio Interpolatore","Interpolazione Composta Lineare")

nodo = 1.5,
values = [polyval(p,nodo) polyval(p_mq,nodo) interp1(x,y,nodo)]
plot(linspace(nodo,nodo,length(values)),values);