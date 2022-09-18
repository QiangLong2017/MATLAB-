%% ¸÷ÖÖÔ¼Êø
clear
x0 = rand(1,4);
A = [1,1,1,0];
b = 6;
Aeq = [1,1,1,0;1,5,0,1];
beq = [3;6];
lb = [0,0,0,0];
ub = [inf,inf,inf,inf];
objfun = @(x)objfun(x);
confun = @(x)mycon(x);

[minx,minf,exitflag] = fmincon(objfun,x0,A,b,Aeq,beq,lb,ub,confun)

%% options
options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
[minx,minf,exitflag,output] = fmincon(objfun,x0,A,b,Aeq,beq,lb,ub,confun,options)

%% use a problem structure
clear

x0 = rand(1,4);
A = [1,1,1,0];
b = 6;
Aeq = [1,1,1,0;1,5,0,1];
beq = [3;6];
lb = [0,0,0,0];
ub = [inf,inf,inf,inf];
objfun = @(x)objfun(x);
confun = @(x)mycon(x);
options = optimoptions('fmincon','Display','iter','Algorithm','sqp');

problem.objective = @(x)objfun(x);
problem.x0 = x0;
problem.Aineq = A;
problem.bineq = b;
problem.Aeq = Aeq;
problem.beq = beq;
problem.lb = lb;
problem.ub = ub;
problem.nonlcon = @(x)mycon(x);
problem.options = options;
problem.solver = 'fmincon';

[minx,minf,exitflag,output] = fmincon(problem)