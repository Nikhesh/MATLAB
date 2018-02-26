clc;
clear all;
close all;
f=50;
t=linspace(1,1,100);
x=sin(2*pi*5*t);
y=cos(2*pi*5*t);
N=1024;
Fs=f/2*linspace(0,1,N/2);
X=ifft(x,N)/N;
Y=ifft(y,N)/N;
plot(X),figure,freqz(Y)
% X=fft(x,N)/N;
% f=fs/2*linspace(0,1,N/2);
% X2=ifft(X,N)/N;
% %plot(f,abs(X(1:length(f))))
% X3=abs(X);
% X4=ifft(X);
% a=abs(X2(1:length(f)))
% plot(f,a)