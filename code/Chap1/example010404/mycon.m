function [c,ceq] = mycon(x)
c = x(1)^2+x(2)^2+x(3)^2-5;
ceq = x(2)^2+x(3)^2+x(4)^2-4;