%To obtain the spectrum of the signal
clc
clear all
close all
%S1: To generate 10Hz sine wave
t=linspace(0,1,100);
f=5;
x=square(2*pi*f*t);
X=dct(x);
X(90:100)=0;
y=idct(X);
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y),