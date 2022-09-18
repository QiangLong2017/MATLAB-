%% fminunc
clear
objfun = @(x) x(1)^2+x(2)^2;
x0 = [-3,3];
[minx,minf,exitflag] = fminunc(objfun,x0)

%% fminsearch
clear
objfun = @(x) x(1)^2+x(2)^2;
x0 = [-3,3];
[minx,minf,exitflag] = fminsearch(objfun,x0)