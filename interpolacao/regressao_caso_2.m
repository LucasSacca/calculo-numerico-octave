% pontos
t = 1:15;
v = [10,16.3,23,27.5,31,35.6,39,41.5,42.9,45,46,45.5,46,49,50];

% constantes
g = 9.81
c = 12.5
m = 68.1
e = exp(1);

% equações
v1 = @(t) (g*m*(1-e^(-(c*t)/m)))/c; #EDO
v2 = @(t) (g*m*t)/(c*(3.75+t));     #Modelo


lista_v1 = [];
lista_v2 = [];
for ti = 1:length(t)
  lista_v1(ti) = (v1(ti));
  lista_v2(ti) = (v2(ti));
endfor


figure(1)
hold on
grid on
title('Diferentes velocidades em função do tempo','FontSize',14)
plot(t,lista_v1,'b-')
plot(t,lista_v2,'r-')
plot(t,v,'ko-')

hold off



xi = v;
yi = lista_v1;
n = length(xi);

a1 = (n*xi*yi' - sum(xi)*sum(yi)) / (n*sum(xi.^2) - (sum(xi))^2)
a0 = mean(yi) - a1*mean(xi)
reg1 = a0+a1*v;



xi = v;
yi = lista_v2;
n = length(xi);

b1 = (n*xi*yi' - sum(xi)*sum(yi)) / (n*sum(xi.^2) - (sum(xi))^2)
b0 = mean(yi) - b1*mean(xi)
reg2 = b0+b1*v;


figure(2)
hold on
grid on
title('Regressões','FontSize',14)
plot(v, reg1,'b-')
plot(v, reg2,'-r')
legend('Regressão v1','Regressão v2')

distancia = abs(1-a1)
distancia2 = abs(1-b1)
