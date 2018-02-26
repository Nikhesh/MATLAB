%Generation of square wave
clc
clear all
close all
t=linspace(0,1,100);
f=5;
x=square(2*pi*f*t);
X=fft(x);
X(90:100)=0;
y=idct(X);
subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),
subplot(2,1,2),plot(t,y),axis([0 1 -2 2])