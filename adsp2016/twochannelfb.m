%Implementation of two channel filterbank
clc
clear all
close all
%Step1: Generation of input signal
% t=linspace(0,1,100);
% x=square(2*pi*5*t);
[p,q]=wavread('voice.wav');
x=p(:)';
% plot(t,x)
%Step2: Define the analysis and synthesis filter
h0=[0.5,0.5];
h1=[0.5,-0.5];
g0=h0;
g1=h1;
x1=conv(x,h0);
x2=conv(x,h1);
x3=downsample(x1,2);
x4=downsample(x2,2);
x5=upsample(x3,2);
x6=upsample(x4,2);
x7=conv(x5,g0);
x8=conv(x6,g1);
y=x7+x8;
soundsc(p),pause,soundsc(y)
% subplot(2,1,1),plot(t,x),axis([0 1 -2 2])
% xlabel('t'),ylabel('Amplitude'),title('Input signal')
% subplot(2,1,2),plot(t,y(1:length(t))),axis([0 1 -2 2])
% xlabel('t'),ylabel('Amplitude'),title('Output signal')