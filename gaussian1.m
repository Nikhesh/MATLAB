%gaussian distribution
clc
clear all
close all
t=linspace(-1,1,200);
mu=0;
s1=.15;
s2=0.01;
x1=(1/sqrt(2*pi*s1.^2))*exp(-((t-mu).^2)/(2*s1.^2));
x2=(1/sqrt(2*pi*s2.^2))*exp(-((t-mu).^2)/(2*s2.^2));
X1=abs(fft(x1));
X2=abs(fft(x2));
subplot(221),plot(t,x1)
subplot(222),plot(t,x2)
subplot(223),plot(t,fftshift(X1))
subplot(224),plot(t,fftshift(X2))