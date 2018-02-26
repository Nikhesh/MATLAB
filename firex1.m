%Passing square wave to 4 filters
clc
clear all
close all
%Step1: Generation of square wave
t=linspace(0,1,100);
f=5;
x=square(2*pi*5*t);
%Step 2: Define the four filters
h1=[0.5,0.5];
h2=[0.5,-0.5];
h3=[-0.5,0.5];
h4=[-0.5,-0.5];
%Step 3 Pass the signal to these 4 filters
y1=conv(x,h1);
y2=conv(x,h2);
y3=conv(x,h3);
y4=conv(x,h4);
%Plotting the four output signals
subplot(2,2,1),plot(t,y1(1:length(t))),
axis([0 1 -2 2])
subplot(2,2,2),plot(t,y2(1:length(t))),axis([0 1 -2 2])
subplot(2,2,3),plot(t,y3(1:length(t))),axis([0 1 -2 2])
subplot(2,2,4),plot(t,y4(1:length(t))),axis([0 1 -2 2])
