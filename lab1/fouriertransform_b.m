

fr=5;
a=19;
ts=0.01;
t=0:ts:3;
gt=a*square(2*pi*fr*t);

subplot(3,1,1);
plot(t,gt);
title("squarewave");
xlabel("t");
ylabel("g(t)");

%fourier transform using FFT

func=fft(gt);
Fs=1/ts;
f = (0:length(func)-1)*Fs/length(func);

subplot(3,1,2);
plot(f,abs(func));
title("freq vs amp");
xlabel("freq");
ylabel("amp");

% inverse fourier transform ifft()

z=ifft(func);
subplot(3,1,3);
plot(t,z);
title("signal from ifft()");
xlabel("t");
ylabel("z(t)");

