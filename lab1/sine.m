x = linspace(-10,10);

y = sin(x);

subplot(2,1,1)
plot(x, y);

xlabel("x");
ylabel("y");

subplot(2,1,2)
stem(x, y);

xlabel("x");
ylabel("y");
