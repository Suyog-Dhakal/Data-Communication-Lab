
k = -10:1:20
fk = -0.92*sin(0.1*pi*k - (3*pi/4));
stem(k,fk);
xlabel("k");
ylabel("f[k]");
