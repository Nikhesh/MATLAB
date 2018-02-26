%To generate a sine wave and plot its spectrum
clc
clear all
close all
t=linspace(0,1,100);
f1=5;
x1=sin(2*pi*f1*t);
x2=cos(2*pi*f1*t);
X1=fft(x1);
X2=fft(x2);
M1=abs(X1);
A1=angle(X1);
M2=abs(X2);
A2=angle(X2);
N1=M1.*exp(i*A2);
N2=M2.*exp(i*A1);
y1=ifft(N1);
y2=ifft(N2);

subplot(2,2,1),plot(t,x1),axis([0 1 -1 1]),title('x1')
subplot(2,2,2),plot(t,x2),axis([0 1 -1 1]),title('x2')
subplot(2,2,3),plot(t,y1),axis([0 1 -1 1]),title('y1')
subplot(2,2,4),plot(t,y2),axis([0 1 -1 1]),title('y2')

