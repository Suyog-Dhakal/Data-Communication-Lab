clear all;
t=0:0.1:20;
f1=1.3;
f2=1.4;

x=sin(2*pi*f1*t) + sin(2*pi*f2*t);

figure(1);
subplot(3,1,1);
plot(t,x);
hold on;
#plot([0 20],[0 0],'black');
hold off;

title('SUYOG DHAKAL (075BCT092) original signal');
xlabel('time');
ylabel('amplitude');

subplot(3,1,2);
x_samples = x(1:10:201);
stem(x_samples,'filled');
xlabel('n');
ylabel('x_s(n)');
axis([0 20 -2 2]);

figure(2);
x_recon=0;
subplot(2,1,1);
stem(x_samples,'filled');
subplot(2,1,2);
for k=0 : length(x_samples)-1
    stem(0:length(x_samples)-1,x_samples,'filled');
    if k==length(x_samples)-1
        title('SUYOG DHAKAL (075BCT092) Reconstruction finished');
    else
        title('SUYOG DHAKAL (075BCT092) Sample by sample reconstruction');
    end
    grid on;
    l=k:-0.1:-20+k;
    x_recon=x_recon+(x_samples(k+1)*sinc(l));
    axis([0 20 -2 2]);
    hold on;
    plot(t,x_samples(k+1)*sinc(l),'r');
    plot(t,x_recon,'b');
    hold off;
    waitforbuttonpress;
end
