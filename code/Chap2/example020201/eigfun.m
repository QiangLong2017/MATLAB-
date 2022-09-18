function F = eigfun(K,A,B,C)
F = sort(eig(A+B*K*C)); % Evaluate objectives