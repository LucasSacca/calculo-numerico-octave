## Alternativa usar func fminbnd(func, xl, xu)
    # No entanto, para a função, damos um intervalo
    # (xl e xu) ao invés de um valor inicial (x0)

f = @(x) -1.5*x^6 - 2*x^4 - 12*x;
f1 = @(x) -9*x^5 - 8*x^3 - 12;
f2 = @(x) -45*x^4 - 24*x^2;

x0 = 2;
i = 0;
es = 0.1;
ea = 100;
while ea >= es && i < 100
  i = i + 1;
  x = x0 - (f1(x0) / f2(x0));

  i
  x0
  f(x0)
  f1(x0)
  f2(x0)
  ea = abs((x - x0)/x)*100

  disp(" ")

  x0 = x;


  endwhile

