
t = 0:0.001:1;
fm=10; %modulating freq
fc=100; %carrier freq
m1=0.5; %modulation index for under modulation i.e. <1
m2=1;  % modulation index for 100% modulation i.e. =1
m3=1.5; % modulation index for over modulation i.e. >1
%input signal
input = sin(2*pi*fm*t);
subplot(5,1,1);
plot(input);
xlabel('time');
ylabel('Amplitude');
title("input signal");

%carrier signal
carrier = sin(2*pi*fc*t);
subplot(5,1,2);
plot(carrier);
xlabel('time');
ylabel('Amplitude');
title("carrier signal");

%under modulation 
am1 = (1 + m1*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(5,1,3);
plot(am1);
xlabel('time');
ylabel('Amplitude');
title("under modulation signal");

%100% modulation
am2 = (1 + m2*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(5,1,4);
plot(am2);
xlabel('time');
ylabel('Amplitude');
title("100% modulation signal");

%over modulation 
am3 = (1 + m3*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(5,1,5);
plot(am3);
xlabel('time');
ylabel('Amplitude');
title("over modulation signal"); 


