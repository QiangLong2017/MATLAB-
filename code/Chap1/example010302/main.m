%% supply the gradient
clear
options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);
x0 = [-1,2];
objfun = @rosenbrockwithgrad;
[minx,minf,exitflag] = fminunc(objfun,x0,options)

%% use a problem structure
clear
options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

problem.options = options;
problem.x0 = [-1,2];
problem.objective = @rosenbrockwithgrad;
problem.solver = 'fminunc';

[minx,minf,exitflag] = fminunc(problem)

%% examine the solution process
clear
options = optimoptions(@fminunc,'Display','iter','Algorithm','quasi-newton');

problem.options = options;
problem.x0 = [-1,2];
problem.objective = @rosenbrockwithgrad;
problem.solver = 'fminunc';

[minx,minf,exitflag,output] = fminunc(problem)
