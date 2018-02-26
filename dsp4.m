clc;
clear all;
close all;
fs=100;
t=0:1/fs:1
x=square(2*pi*5*t);
b=1/11*ones(11,1);
x1=filter(b,2,x);
zplane(x1);
freqz(x1);
plot(x1)