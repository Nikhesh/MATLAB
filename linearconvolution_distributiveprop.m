%To prove the distributive property
clc
clear all
close all
%Step 1: Generate the input sequence
t=linspace(0,1,100);
x=sin(2*pi*5*t);
h1=[0.5,0.5];
h2=[0.25,-0.25];
h=h1+h2;
y1=conv(x,h);
y21=conv(x,h1);
y22=conv(x,h2);
y2=y21+y22;
%Plotting the result
subplot(3,1,1),plot(t,x),
subplot(3,1,2),plot(t,y1(1:length(t))),
subplot(3,1,3),plot(t,y2(1:length(t)))
