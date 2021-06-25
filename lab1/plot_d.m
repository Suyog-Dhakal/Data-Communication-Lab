
k = 0:1:50
fk = ((-0.93).^k).*exp(j*pi*k/sqrt(350));
stem(k,fk);
xlabel("k");
ylabel("f[k]");
