clear;
clc;

n = 100;
N = 1e5;

X = rand(n,N);
Y = mean(X);

figure(1)
clf
histfit(Y)
xlabel('y')
ylabel('times')
legend('values',' bell-shaped curve of normal distribution')
title(sprintf('%1.0f means of %1.0f  numbers \n',N,n))