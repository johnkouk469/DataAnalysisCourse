clear;
clc;

n = 10.^(0:1:8);
a = zeros(3,length(n));
b = zeros(3,length(n));

for i=1:length(n)
    X = 1 + rand(1,n(i));
    Y = rand(1,n(i));
    Z = -1 + 2*rand(1,n(i));    
    
    a(1,i) = mean(1./X);
    b(1,i) = 1 / mean(X);
    fprintf('\n');
    fprintf('E[1/X] = %3.3f 1/E[X]=%3.3f for n = %i \n',a(1,i),b(1,i),n(i));
    
    a(2,i) = mean(1./Y);
    b(2,i) = 1 / mean(Y);
    fprintf('\n');
    fprintf('E[1/Y] = %3.3f 1/E[Y]=%3.3f for n = %i \n',a(2,i),b(2,i),n(i));
    
    a(3,i) = mean(1./Z);
    b(3,i) = 1 / mean(Z);
    fprintf('\n');
    fprintf('E[1/Z] = %3.3f 1/E[Z]=%3.3f for n = %i \n',a(3,i),b(3,i),n(i));
end

fprintf('\n');
figure(1)
clf
plot(a(1,:),'.-c')
hold on
plot(b(1,:),'.-m')
legend('E[1/X]','1/E[X]')
xlabel('10^n')
ylabel('mean')
title(sprintf('Examine if E[1/X]=1/E[X], in [1,2]\n'))

figure(2)
clf
plot(a(2,:),'.-c')
hold on
plot(b(2,:),'.-m')
legend('E[1/Y]','1/E[Y]')
xlabel('10^n')
ylabel('mean')
title(sprintf('Examine if E[1/Y]=1/E[Y], in [0,1]\n'))

figure(3)
clf
plot(a(3,:),'.-c')
hold on
plot(b(3,:),'.-m')
legend('E[1/Z]','1/E[Z]')
xlabel('10^n')
ylabel('mean')
title(sprintf('Examine if E[1/Z]=1/E[Z], in [-1,1]\n'))