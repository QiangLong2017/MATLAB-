%% problem
C = [0.9501    0.7620    0.6153    0.4057
    0.2311    0.4564    0.7919    0.9354
    0.6068    0.0185    0.9218    0.9169
    0.4859    0.8214    0.7382    0.4102
    0.8912    0.4447    0.1762    0.8936];
d = [0.0578
    0.3528
    0.8131
    0.0098
    0.1388];
A =[0.2027    0.2721    0.7467    0.4659
    0.1987    0.1988    0.4450    0.4186
    0.6037    0.0152    0.9318    0.8462];
b =[0.5251
    0.2026
    0.6721];
Aeq = [3 5 7 9];
beq = 4;
lb = -0.1*ones(4,1);
ub = 2*ones(4,1);

%% solve 1
minx = lsqlin(C,d,A,b,Aeq,beq,lb,ub)

%% solve 2
options = optimoptions('lsqlin','Algorithm','interior-point','Display','iter');
minx = lsqlin(C,d,A,b,Aeq,beq,lb,ub,[],options)