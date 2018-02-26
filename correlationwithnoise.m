clc 
close all 
clear all
%Generate sine wave
t=linspace(0,1,100)
f=6
x=sin(2*pi*f*t)
y1=xcorr(x,x)
subplot(2,1,1),plot(y1)
xlabel('t'),ylabel('Amplitude'),title('Correlation with sine wave')
n1=rand(1,length(x))
x1=x+n1
y2=xcorr(x,x1)
subplot(2,1,2),plot(y2)
xlabel('t'),ylabel('Amplitude'),title('Correlation with corrupted wave')
