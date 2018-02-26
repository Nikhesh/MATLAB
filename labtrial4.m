%Significance of coefficients /masking effect
clc
clear all
close all
t=0:0.01:1;
x=sin(2*pi*5*t);
X=fft(x,length(x));
X(1:5)=0;
y=ifft(X);
plot(t,y),axis([0 1 -2 2])