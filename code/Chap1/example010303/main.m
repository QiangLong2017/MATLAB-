%% 有额外参数
a = 3;
f = @(x,a)100*(x(2) - x(1)^2)^2 + (a-x(1))^2;
objfun = @(x)f(x,a);
x0 = [-1,1.9];
[minx,minf,exitflag,output] = fminsearch(objfun,x0)

%% options
options = optimset('Display','iter','PlotFcns',@optimplotfval);
[minx,minf,exitflag,output] = fminsearch(objfun,x0,options)