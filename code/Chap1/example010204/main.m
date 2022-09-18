%% exitflag
clear
objfun = @sin;
[minx,minf,exitflag] = fminbnd(objfun,1,2*pi)

%% options
clear
fun = @sin;
x1 = 0;
x2 = 2*pi;
% options = optimset('PlotFcns',@optimplotfval);
options = optimset('Display','iter','MaxFunEvals',500,'MaxIter',500);
[x,fval,exitflag] = fminbnd(fun,x1,x2,options)

%% output
[x,fval,exitflag,output] = fminbnd(fun,x1,x2)