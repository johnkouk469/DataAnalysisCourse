clear;

n = 10.^(0:1:8);
Pr = zeros(size(n));

for i=1:size(n,2)
    Pr(i) = prTails(flip_coin_experiment(n(i)));
end

Pr
figure(1);
plot(Pr);