%To hear the sine wave
clc
clear all
close all
t=linspace(0,1,18000);
f1=60000;
f2=100000;
f3=250000;
x1=sin(2*pi*f1*t.^9);
x2=sin(2*pi*f2*t.^9);
x3=sin(2*pi*f3*t.^9);
x=[x1,x2,x3];
soundsc(x)
