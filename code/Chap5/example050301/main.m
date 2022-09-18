fun = @myfun;
x0 = [0,0];
options = optimoptions('fsolve','Display','iter','PlotFcn',@optimplotfirstorderopt);
[x,fval,exitflag,output] = fsolve(fun,x0,options)