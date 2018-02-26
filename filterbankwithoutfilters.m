%Filterbank without filters
clc
clear all
close all
%Step 1: Define the input signal
% t=linspace(0,1,100);
% x=sin(2*pi*5*t);
x=wavread('voice.wav');
k=input('Enter the delay:'); 
x1=downsample(x,2);
x2=upsample(x1,2);
x3=[zeros(1,k),x2];
x4=[zeros(1,k),x];
x5=downsample(x4,2);
x6=upsample(x5,2);
y=x3+x6(1:length(x3));
plot(t,x,t,y(1:length(t))),
legend('Input','Output')