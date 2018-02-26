%To generate sinusoidal signal
clc
clear all
close all
A=1;
f=1;
t=linspace(0,1,100);
x1=A*sin(2*pi*f*t);
x2=A*cos(2*pi*f*t);
plot(t,x1,t,x2),xlabel('time'),ylabel('Amplitude'),
title('x(t)'),legend('Sine','Cosine')