clear;

% random_num = zeros(1000,1);
% for i=1:size(random_num,1)
%     random_num(i) = -log(1 - rand());
% end

l=1;

unirand_values = rand(1,1000);
exprand_values = -1/l*log(1-unirand_values);

X = 0:0.1:1;
exp_pdf_theory = l*exp(-l*X);

figure(1);
% histogram(random_num);
histogram(exprand_values);
yyaxis right
plot(X,exp_pdf_theory,'Linewidth',4);
legend('Histogram','Exponential Distribution')