clc;
clear all;
close all;
fs=500;
t=0:1/fs:1;
x=sin(2*pi*0*t)+sin(2*pi*5*t)+sin(2*pi*10*t);
N=1024;
fs1=4.99;
fs2=5.1;
x1=fir1(256,fs1/500,'stop');
x2=filter(x1,1,x);
[H, W] = freqz(x1);
plot(fs * W/(2*pi), 20*log10(abs(H)))
grid on;










