clear all
close all
clc

fCarrier = 50;
fmSignal = 5;
A = 2;

tvec = 0 : 0.001 : 1;

carrirerXVec = A .* sin(2 * pi * fCarrier * tvec);
mSignalVec = A/2 .* square(2 * pi * fmSignal * tvec) + A/2;

ASKvec = carrirerXVec .* mSignalVec;

subplot(3,1,1);
plot(tvec, carrirerXVec);
axis([0 1 -10 10]);
grid on;
title('SUYOG DHAKAL (075BCT092) Carrier Signal');

subplot(3,1,2);
plot(tvec, mSignalVec);
axis([0 1 -7 7]);
grid on;
title(' Message Signal');

subplot(3,1,3);
plot(tvec, ASKvec);
axis([0 1 -25 25]);
grid on;
title(' Modulated Signal');

