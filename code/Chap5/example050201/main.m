%% ��ʼ��
clear
eq = @sin;
x0 = 1;
[x,fval,exitflag,output] = fzero(eq,x0)

%% ��ʼ����
clear
eq = @sin;
sec = [2,5];
[x,fval,exitflag,output] = fzero(eq,sec)