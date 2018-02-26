clc;
clear all;
close all;
fs=500;
syms t
x2 = (1/(sqrt(2*pi*0.01)))*(exp(-t.^2/(2*0.01)));
% N=1024;
% X1=fft(x,N)/N;
% f1=fs/2*linspace(0,1,N/2);
% plot(f1,2*abs(X1(1:length(f1))))
a=fourier(x2);
subplot(1,2,1),ezplot(x2,[-0.5 0.5]),
subplot(1,2,2),ezplot(a,[-20 20]),

