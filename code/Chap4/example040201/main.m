%% input
clear
xdata = [0.9 1.5 13.8 19.8 24.1 28.2 35.2 60.3 74.6 81.3];
ydata = [455.2 428.6 124.1 67.3 43.2 28.1 13.1 -0.4 -1.3 -1.5];

%% model
fun = @(w,xdata)w(1)*exp(w(2)*xdata);

%% curve fit
x0 = [100,-1];
w = lsqcurvefit(fun,x0,xdata,ydata)

%% draw
times = linspace(xdata(1),xdata(end));
plot(xdata,ydata,'ko',times,fun(w,times),'b-')
legend('Data','Fitted exponential')
title('Data and Fitted Curve')