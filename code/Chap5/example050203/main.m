%% 文件表示函数
c  = 2;
fun = @(x) f(x,c);
x0 = 0.1;
[x,fval,exitflag,output] = fzero(fun,x0)

%% 隐式函数
myfun = @(x,c) cos(c*x);  % parameterized function
c = 2;                    % parameter
fun = @(x) myfun(x,c);    % function of x alone
options = optimset('Display','iter','PlotFcns',{@optimplotx,@optimplotfval}); % show iterations

[x,fval,exitflag,output] = fzero(fun,0.1,options)