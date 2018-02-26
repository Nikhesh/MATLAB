%ACF of a sine wave
clc
clear all
close all
%Generate sine wave of 5 Hz frequency
t=linspace(0,1,100);
x=sin(2*pi*5*t);
x1=x+randn(1,length(x));
y1=xcorr(x,x);
y2=xcorr(x,x1);
plot(y1),figure,plot(y2)