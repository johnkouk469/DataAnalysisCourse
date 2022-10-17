clear;
clc;

mu = 4;
sigma = 0.01;
pr = normcdf([-inf 3.9],mu,sigma);

pr(2)-pr(1)

i = norminv(0.01,mu,sigma);

