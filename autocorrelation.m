%AUTOCORELATION
clc
close all
clear all
t=linspace(0,1,100)
f=6
x=sin(2*pi*f*t)
y1=xcorr(x)
subplot(2,1,1)
plot(y1)
xlabel('t'),ylabel('Amplitude')
title('Autocorrelation')
x=sin(2*pi*f*t)
y2=conv(x,fliplr(x))
subplot(2,1,2)
plot(y2)
xlabel('t'),ylabel('Amplitude')
title('Autocorrelation')


