%Impact of  MA  filter
clc
clear all
close all
t=linspace(0,1,100);
f=5;
x=sin(2*pi*f*t);    %Clean signal
w=rand(1,length(x));    %Noise
x1=x+w;     %Corrupted signal
%Apply MA filter to smoothen the signal
h=1/5*ones(1,5);
y=conv(x1,h);
subplot(3,1,1),plot(t,x),
subplot(3,1,2),plot(t,x1),
subplot(3,1,3),plot(t,y(1:length(t)))