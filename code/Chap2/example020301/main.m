%% fminimax
clear
x0 = [0.1; 0.1];       % Make a starting guess at solution
[minx,minf,maxminf,exitflag,output] = fminimax(@myfun,x0)

%% problem
clear
options = optimoptions('fminimax','Display','iter'); 
problem.objective = @myfun;
problem.x0 = [0.1;0.1];
problem.options = options;
problem.solver = 'fminimax';
[minx,minf,maxminf,exitflag,output] = fminimax(problem)
