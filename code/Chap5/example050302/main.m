fun = @myfun;
x0 = rand(1,4);
options = optimoptions('fsolve','Display','iter','PlotFcn',@optimplotfirstorderopt);
[x,fval,exitflag,output] = fsolve(fun,x0,options)
