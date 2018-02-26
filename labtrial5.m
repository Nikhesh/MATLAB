%Drawback of FT
clc
clear all
close all
t=0:0.01:3.02;
f1=5;
f2=20;
x1=sin(2*pi*f1*[0:0.01:1]);
x2=sin(2*pi*f2*[0:0.01:1]);
x3=zeros(1,length(x1));
x=[x1,x3,x2];

fs=100;
nfft=512;
f=fs/2*linspace(0,1,nfft/2);
X=fft(x,nfft)/nfft;
subplot(2,1,1),plot(t,x),axis([0 3 -1 1])
subplot(2,1,2),plot(f,2*abs(X(1:length(f))))
