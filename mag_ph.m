%Importance of magnitude and phase
clc
clear all
close all
t=linspace(0,1,100);
f=5;
x=square(2*pi*f*t);
X=fft(x,length(x));
r1=ifft(abs(X));
r2=ifft(angle(X));
r3=ifft(abs(X).*exp(i*angle(X)));
subplot(2,2,1),plot(t,x),
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(2,2,2),plot(t,r1),
xlabel('t'),ylabel('Amplitude'),title('Magnitude alone')
subplot(2,2,3),plot(t,r2),
subplot(2,2,4),plot(t,r3),
