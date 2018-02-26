clc;
clear all;
close all;
fs=30.1;
t=0:1/fs:1;
x=sin(2*pi*0*t)+sin(2*pi*5*t)+sin(2*pi*15*t);
%plot(t,x);
f=15/15.05;
d=fir1(21,f,'low');
fvtool(d,1,'fs',fs);
N=4096;
f1=fs/2*linspace(0,1,N/2);
%fvtool(d,1,'fs',fs);
%freqz(d)
% N=24;
X1=fft(x,N)/N;
% X2=fft(x1,N)/N;
% X3=fft(x3,N)/N;
%plot(f1,abs(X1(1:length(f1))))
% hold on
% plot(f1,abs(X2(1:length(f1))))
% hold on
% plot(f1,abs(X3(1:length(f1)))) 
X2=fft(d,N)/N;
%plot(f1,abs(X2(1:length(f1))))
