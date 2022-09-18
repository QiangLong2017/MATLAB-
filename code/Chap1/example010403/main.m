%% Ïä×Ó¼¯Ô¼Êø
objfun = @(x)1+x(1)/(1+x(2))-3*x(1)*x(2)+x(2)*(1+x(1));

x0 = [0.5,1];

A = [];
b = [];
Aeq = [];
beq = [];

lb = [0,0];
ub = [1,2];

[minx,minf,output] = fmincon(objfun,x0,A,b,Aeq,beq,lb,ub)

%% A different initial point can lead to a different solution
x0 = x0/5;
[minx,minf,output] = fmincon(objfun,x0,A,b,Aeq,beq,lb,ub)