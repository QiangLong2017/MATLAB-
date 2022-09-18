H = [1 -1; -1 2]; 
f = [-2; -6];
Aeq = [1 1];
beq = 0;

options = optimoptions('quadprog','Display','iter');
[x,fval,exitflag,output,lambda] = quadprog(H,f,[],[],Aeq,beq,[],[],[],options)