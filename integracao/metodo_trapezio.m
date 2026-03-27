f = @(x) x.^2;

function trapm (x0, xn, n, f)
  h = (xn - x0) / n;
  xi = (x0+h):h:(xn-h);

  Integral = (h/2) * (f(x0) + 2*sum(f(xi)) + f(xn))
endfunction


x0 = 0
xn = 2
n = 3
trapm(x0, xn, n, f)
