%% 求sin(x)的最小值
objfun = @sin;
x1 = 0;
x2 = 2*pi;
minx = fminbnd(objfun,x1,x2)
true_minx = 3*pi/2

%% 直接输入函数句柄
minx = fminbnd(@sin,x1,x2)

