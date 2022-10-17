clear;
clc;

mu = [2 3];
Sigma = [1 1.5; 1.5 3];
n = 1000;
% rng('default')  % For reproducibility
R = mvnrnd(mu,Sigma,n);

X = R(:,1);
Y = R(:,2);

varX = var(X);
varY = var(Y);

varXY = var(X+Y);
varXnY = varX + varY;

fprintf("var(X) = %f\n", varX);
fprintf("var(Y) = %f\n", varY);
fprintf("var(X+Y) = %f\n", varXY);
fprintf("var(X)+ var(Y) = %f\n", varXnY);


% plot(random_num(:,1),random_num(:,2),'+')