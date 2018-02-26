%Linear combination of signals
clc
clear all
close all
x1=wavread('voice.wav');
%To generate artificial signal
N=length(x1);
n=0:N-1;
x2=sin(2*pi*(1500/8000)*n);
%To generate a random signal
x3=randn(N,1);
%To generate the non-stationary signal
x4=cos(2*pi*(1500/8000)*n.^2);
x=[x1,x2',x3,x4'];
a=[.85;0;.15;0];
y=x*a;
soundsc(y)