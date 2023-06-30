clc;
clear;
T = 1;
N = 100;
dt = T / N;
MC = 2^10;

% Preallocate W and sw vectors
W = zeros(MC, N + 1);
sw = zeros(1, N + 1);

for i = 1:MC
    dW = sqrt(dt) * randn(1, N);
    W(i, 1) = 0;
    for n = 2:N + 1
        W(i, n) = W(i, n - 1) + dW(n - 1);
        sw(n) = sw(n - 1) + W(i, n);
    end
    t = 0:dt:T;
    plot(t, W(i, :));
    hold on
end

hold off
xlabel('t');
ylabel('W(t)');
title('Brownian Motion');

s = sw ./ MC;
hold on
plot(t, s, 'k', 'LineWidth', 2);
legend('Sample Paths', 'Average Path', 'Location', 'northwest');



