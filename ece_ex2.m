clc
clear all
close all
t=linspace(0,1,300)
t1=linspace(0,1,100);
f1=5;
x1=sin(2*pi*f1*t1);
f2=0;
x2=sin(2*pi*f2*t1);
f3=10;
x3=sin(2*pi*f3*t1);
x=[x1,x2,x3];
%Filter design
% h=fir1(21,0.5);
y=medfilt1(x,3);
x(150)=1;
x(155)=-1;
fs=100;
N=512;
f=fs/2*linspace(0,1,N/2);
X=fft(x,N);
subplot(3,1,1),plot(t,x)
subplot(3,1,2),plot(f,abs(X(1:length(f))))
subplot(3,1,3),plot(t,y(1:length(t)))