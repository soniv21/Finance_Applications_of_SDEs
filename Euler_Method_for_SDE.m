clc;
clear;
T = 1;                  
N = 2^5;                
dt = T / N;             
t = 0:dt:T;              

X = zeros(1, N+1);       
X(1) = 0;                

sx = zeros(1, N+1);
sx(1) = X(1);
MC = 100;
for j = 2:MC
    for i = 2:N+1
        dW = sqrt(dt) * randn;  
        f = X(i-1)^2 + t(i-1)^2;  
        sigma = t(i-1) * X(i-1);  
        X(i) = X(i-1) + f * dt + sigma * dW;
        sx(i) = sx(i-1) + X(i);
    end

plot(t, X);
hold on
end
hold off
xlabel('t');
ylabel('X(t)');
title('Euler Method for SDE');

