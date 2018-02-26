%The objective is to generate sine wave
clc
clear all
close all
A=1;
f=5;
ph=0;
t=linspace(0,1,100);
x=A*sin(2*pi*f*t+ph);
x1=abs(x);
y=0.5*(x+x1);
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y)