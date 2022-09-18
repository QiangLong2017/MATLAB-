%% problem
clear
Aeq = [22    13    26    33    21     3    14    26
    39    16    22    28    26    30    23    24
    18    14    29    27    30    38    26    26
    41    26    28    36    18    38    16    26];
beq = [ 7872,10466,11322,12058];
N = 8;
lb = zeros(N,1);
intcon = 1:N;
f = [2    10    13    17     7     5     7     3];

%% without using an initial point, branch-and-bound.
[x1,fval1,exitflag1,output1] = intlinprog(f,intcon,[],[],Aeq,beq,lb)

%% using an initial feasible point
x0 = [8 62 23 103 53 84 46 34];
[x2,fval2,exitflag2,output2] = intlinprog(f,intcon,[],[],Aeq,beq,lb,[],x0)