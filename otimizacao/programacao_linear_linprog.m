# Função linprog

pkg load optim

## Função objetivo: 35*x11 + 20*x12 + 40*x13 + 90*x21 + 55*x22 + 77*x23
f = [35,20,40,90,55,77];

##x = [x11, x12, x13, x21, x22, x23]
x0 = [1,1,1,1,1,1];
## Ax = B
A = [1, 1, 1, 0, 0, 0;
     0, 0, 0, 1, 1, 1];

B = [50;
     100];

## Aeq*x = beq

Aeq = [1,0,0,1,0,0;
       0,1,0,0,1,0
       0,0,1,0,0,1];

beq = [20;
       60;
       40];

x = linprog(f, A, B, Aeq, beq, lb=zeros(size(x0)))

