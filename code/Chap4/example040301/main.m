t = linspace(-4,4);
y = 1/sqrt(2*pi)*exp(-t.^2/2);

fun = @(x)x(1)*exp(-t).*exp(-exp(-(t-x(2)))) - y;

lb = [1/2,-1];
ub = [3/2,3];
x0 = [1/2,0];
x = lsqnonlin(fun,x0,lb,ub)

plot(t,y,'r-',t,fun(x)+y,'b-')
xlabel('t')
legend('Normal density','Fitted function')