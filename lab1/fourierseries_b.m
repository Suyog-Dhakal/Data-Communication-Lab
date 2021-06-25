L = 5;
t = -L : 0.01 : L;
g = @ (t) -t.^4 + 17 * t.^3 - t.^2 - 47;
g_t = g(t);

subplot(2, 1, 1);
plot(t, g_t);
xlabel("t");
ylabel("g(t)");

m = 20;
Ao = 1 / L * trapz(t, g_t);
A  = zeros(1, m);
B  = zeros(1, m);
S  = Ao / 2;

for i = 1 : m
    A(i) = 1 / L * trapz(t, g_t .* cos( (i * pi / L) .* t));
    B(i) = 1 / L * trapz(t, g_t .* sin( (i * pi / L) .* t));
    S   += (A(i) .* cos( (i * pi / L) .* t) +
            B(i) .* sin( (i * pi / L) .* t));
endfor

subplot(2, 1, 2);
plot(t, S);
title("Using Fourier Series");
xlabel("t");
ylabel("g(t)");