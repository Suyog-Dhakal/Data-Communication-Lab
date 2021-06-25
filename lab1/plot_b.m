
%plotting 7A ii

t = -10:.01:10;
xt = 5*((exp)(-0.2*t)).*(sin(2*pi*t));
plot(t,xt);
xlabel("t");
ylabel("x(t)");
