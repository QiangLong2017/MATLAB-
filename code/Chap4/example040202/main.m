%% generate sample points
clear
rng default % for reproducibility
xdata = linspace(0,3);
ydata = exp(-1.3*xdata) + 0.05*randn(size(xdata));

%% model 
fun = @(x,xdata)x(1)*exp(x(2)*xdata);

%% curve fit
lb = [0,-2];
ub = [3/4,-1];
x0 = [1/2,-2];
x = lsqcurvefit(fun,x0,xdata,ydata,lb,ub)

%% draw
plot(xdata,ydata,'ko',xdata,fun(x,xdata),'b-')
legend('Data','Fitted exponential')
title('Data and Fitted Curve')