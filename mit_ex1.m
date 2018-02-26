%Spike and slow variation
clc
clear all
close all
t=linspace(0,1,1000);
x=sin(2*pi*5*t);
y=abs(x);
y(100:100:900)=5;
specgram(y,1024,1000,2),figure,specgram(y,1024,1000,128)