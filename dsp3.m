clc;
clear all;
close all;
fs=40;
t=0:1/fs:1;
x=sin(2*pi*0*t)+sin(2*pi*5*t)+sin(2*pi*15*t)+sin(2*pi*20*t);
f1=5/40;
f2=15/40;
f=[f1 f2];
x=fir1(21,f,'stop');
% u=fvtool(x,1,'fs',fs);
% plot(u)
freqz(x)