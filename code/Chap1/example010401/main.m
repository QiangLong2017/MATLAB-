%% 线性不等式约束
objfun = @(x)100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [-1,2];
A = [1,2];
b = 1;
[minx,minf,exitflag] = fmincon(objfun,x0,A,b)