T = 0:5:30;
c_10 = [12.9, 11.3, 10.1, 9.03, 8.17, 7.46, 6.85];
target = 18




hold on
grid on
plot(T,c_10,'o')

y = polyfit([15,20],[9.03,8.17],1);


f = @(x) y(1)*x + y(2);


f_target = f(target)


plot(T, f(T))
plot(target, f_target, 'o')


