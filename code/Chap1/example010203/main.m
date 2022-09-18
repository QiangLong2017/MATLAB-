%% 通过文件定义函数
clear
a = 9/7;
x1 = 1;
x2 = 2*pi;
minx = fminbnd(@(x) objfun(x,a),x1,x2)
true_minx = 3*pi/2 + 9/7

%% 使用匿名函数
clear
a = 9/7;
x1 = 1;
x2 = 2*pi;
objfun = @(x)sin(x-a);
[minx,minf,exitflag] = fminbnd(objfun,x1,x2)