%Impact of median filter
clc
clear all
close all
%Step1: Generation of sine wave
t=linspace(0,1,1000);
x=sin(2*pi*5*t);
%Step 2: To introduce the spike
x(1:100:end)=5;
x(50:100:end)=-5;
%Averaging filter to the problem
%  h=[0.5,-0.5];
%  y=filter(h,1,x);
  y=medfilt1(x); %Median filtering
subplot(2,1,1),plot(t,x)
subplot(2,1,2),plot(t,y)