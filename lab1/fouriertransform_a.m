
f = 5;
amp = 19;
ts= 0.001;
t = 0:ts:3-ts;



sig = amp*cos(2*pi*f*t);

%cosine wave
subplot(3,1,1);
plot(t,sig);
xlabel('Time');
ylabel('Amplitude');


%using fft

x = fft(sig);
fs = 1/ts;
f = (0:length(x)-1)*(fs/length(x));
subplot(3,1,2);
plot(f,abs(x));
xlabel('Frequency');
ylabel('Magnitude');



%inverse fourier transform using  IFFT

z= ifft(x);
suplot(3,1,3);
plot(t,z);
title("signal from ifft()");
xlabel("t");
ylabel("z(t)");

