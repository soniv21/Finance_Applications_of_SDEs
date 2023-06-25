clc; %clearing environment
T = 1;
N = 500;
h = (T - 0) / N;
dw = sqrt(h) * randn(1, N);
w = cumsum(dw);
t = 0:h:T-h;
plot(t, w);
xlabel('t');
ylabel('w');
title('Brownian Motion Simulation');
hold on

mc = 2^4;
dw = sqrt(h) * randn(1, N);
w = cumsum(dw);
t = 0:h:T-h;
b = [0, w];
plot(t, b);

