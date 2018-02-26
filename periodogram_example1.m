%To obtain periodogram of the signal
clc
clear all
close all
%Step 1: Generate the signal
f1=5;
f2=6;
Fs=100;
t=0:1/Fs:10;
x=5.*sin(2*pi*f1*t)+10.*sin(2*pi*f2*t);
n=randn(1,length(x));
x1=x+n;
%Step2: Periodogram
nfft=256;
f=Fs/2*linspace(0,1,nfft/2);
X=fft(x1,nfft);
Sxx=X.*conj(X)/nfft;
plot(f,Sxx(1:length(f))),
xlabel('f'),ylabel('Amplitude'),
title('S_x_x(e^j^w)')
