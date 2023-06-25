%%% 1(a)%%%

a = 0;
h = 0.05 ; t(1) = 0;
b = 1; 
N = (b-a)/h;
w(1) = 0;

for i = 2:N
    w(i) = w(i-1) + h*(t(i-1)*exp(3*t(i-1)) - 2*w(i-1));
    t(i) = a + (i-1)*h;
end

w;
plot(t,w,'r-');
xlabel('t','FontSize',14);
ylabel('w(t)','FontSize',14);
title('Approximation of w(t)','FontSize',16);


%%%1(b)%%%
a = 2;%starting value
b = 3;%end value
h = 0.05; t(1) = 2;
y(1) = 1;
N = (b-a)/h;
for i=2:N
    y(i) = y(i-1) + h*(1+(t(i-1)-y(i-1))^2);
    t(i) = a + i*h;
end    


plot(t,y,'r-')
xlabel('t','FontSize',14);
ylabel('y(t)','FontSize',14);



% i(c)part 
a = 1;
b = 2;
h = 0.025; t(1) = 1;
N = (b-a) / h;
w(1) = 2;

for i = 2:N+1
    w(i) = w(i-1) + h*(1 + w(i-1)/t(i-1)); 
    t(i) = a + i*h;
end

%plotting
plot(t,w);
xlabel('T')
ylabel('W')
title('Euler''s Method Solution')

% i(d)part 
a = 0;
b = 1;
h = 0.02; t(1) = 0;
N = (b-a) / h;
w(1) = 1;

for i = 2:N+1
    w(i) = w(i-1) + h*(cos(2*t(i-1)) + sin(3*t(i-1))); 
    t(i) = a + i*h;
end
%plotting
plot(t,y, 'r-');


%%%(ii)%%%

%a
a = 0;
h = 0.05 ; t(1) = 0;
b = 1; 
N = (b-a)/h;
w(1) = 1;

for i = 2:N
    w(i) = w(i-1) + h*(exp(t(i-1) - w(i-1)));
    t(i) = a + (i-1)*h;
end

w;
plot(t,w,'r-');

%b
a = 1;
h = 0.05;
t(1) = 1;
b = 2;
N = (b-a)/h;
w(1) = 2;

for i = 2:N
    w(i) = w(i-1) + h*(1+(t(i-1))/(1+w(i-1)));
    t(i) = a + (i-1)*h;
end

plot(t,w,'r-');
xlabel('t','FontSize',14);
ylabel('w(t)','FontSize',14);
title('Approximation of w(t)','FontSize',16);

%c
a = 2;
h = 0.025;
t(1) = 2;
b = 3;
N = (b-a)/h;
w(1) = 2;

for i = 2:N
    w(i) = w(i-1) + h*(-w(i-1) + t(i-1) * w(i-1)^1/2);
    t(i) = a + (i-1)*h;
end

plot(t,w,'r-');

%d
a = 1;
h = 0.02;
t(1) = 1;
b = 2;
N = (b-a)/h;
w(1) = 2;

for i = 2:N
    w(i) = w(i-1) + h*(t(i-1)^-2 *(sin(2*t(i-1))) - 2*t(i-1)*w(i-1));
    t(i) = a + (i-1)*h;
end

plot(t,w,'r-');