clc
clear all
close all
[x1,Fs]=wavread('voice.wav');
N=length(x1);
n=0:N-1;
x2=sin(2*pi*1000/8000*n);
x=[x1,x2];
a=[.8;0.2];
y=x*a;
soundsc(y,Fs) 