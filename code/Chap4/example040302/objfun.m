function f = objfun(x)

f(1) = 3*x(1)^2+2*x(1)*x(2)+2*x(2)^2+x(3)+3*x(4)-6;
f(2) = 2*x(1)^2+x(1)+x(2)^2+10*x(3)+2*x(4)-2;
f(3) = 3*x(1)^2+x(1)*x(2)+2*x(2)^2+2*x(3)+9*x(4)-9;
f(4) = 3*x(1)^2*x(2)^2+2*x(3)+3*x(4)-3;