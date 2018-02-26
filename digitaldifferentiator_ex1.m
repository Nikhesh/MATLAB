%Digital differentiator
clc
clear all
close all
h=[-0.5,1,0,-1,0.5];    %Differentiator
t=linspace(0,1,100);
x=5.*ones(1,length(t)); %input signal
x(25)=7;
x(50)=1;
x(75)=8;
y=filter(h,1,x);
subplot(2,1,1),plot(t,x),axis([0 1 -10 10])
subplot(2,1,2),plot(t,y),axis([0 1 -10 10])