#####################      Metodo de Euler:
clear all
close all
clc

T = 1; #passo ; periodo
T_final = 50;
t = 0:T:T_final;

N = length(t);
v = zeros(1, N);
vd = zeros(1, N);
c = 10;
m = 70;
g = 9.81;

for ii = 1:N-1
    vd(ii) = g - (v(ii)*c)/m;
    v(ii+1) = v(ii) + vd(ii)*T;
endfor


t_analitica = 0:0.1:T_final;
v_solucao_edo = g * m/c * (1-exp(-c/m*t_analitica));


hold on

plot(t_analitica, v_solucao_edo, 'r', 'linewidth', 0.5)
plot(t, v, 'b--', 'linewidth', 0.8)

grid on
xlabel('tempo [s]', 'fontsize', 14)
ylabel('v [m/s]', 'fontsize', 14)

legend('Curva Real','Euler')

hold off

