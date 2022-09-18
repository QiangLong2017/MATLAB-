%% problem
clear
f = [3 -5 -2 -1]';
A = [1 1 1 0;4 -1 1 2;-1 1 2 3];
b = [4 6 12]';
Aeq = [];
beq = [];
lb = [0 0 0 0];
ub = [inf inf inf inf];

%% linprog
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub)

%% interior-point
options = optimoptions('linprog','Algorithm','interior-point');
x0 = rand(1,4);
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,x0,options)

%% dual-simplex
x0 = rand(1,4);
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub,x0,options)