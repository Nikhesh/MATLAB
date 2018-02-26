%Filterbank without filters
clc
clear all
close all
%Step 1: Generation of input signal
t=linspace(0,1,100);
x=sin(2*pi*5*t);
x1=downsample(x,2);
x2=upsample(x1,2);
x3=[0,0,0,0,0,x2];
x4=[0,0,0,0,0,x];
x5=downsample(x4,2);
x6=upsample(x5,2);
y=x3+x6(1:length(x3));
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y(1:length(t)))