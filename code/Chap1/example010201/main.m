%% ��sin(x)����Сֵ
objfun = @sin;
x1 = 0;
x2 = 2*pi;
minx = fminbnd(objfun,x1,x2)
true_minx = 3*pi/2

%% ֱ�����뺯�����
minx = fminbnd(@sin,x1,x2)

