lb = [0,0,0,0];
ub = [10,10,10,10];
x0 = rand(1,4);
[x,resnorm,residual,exitflag,ouput] = lsqnonlin(@objfun,x0,lb,ub)