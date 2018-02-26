%Moving average system
clc
clear all
close all
%Step 1: Square wave
t=linspace(0,1,100);
x=square(2*pi*5*t);
%Step 2: Three systems
h1=1/3*ones(1,3);%System 1
h2=1/5*ones(1,5);%System-2
h3=1/11*ones(1,11);%System-3
%Step 3: Obtain the three outputs
y1=filter(h1,1,x);
y2=filter(h2,1,x);
y3=filter(h3,1,x);
subplot(2,2,1),plot(t,x),axis([0 1 -2 2])
subplot(2,2,2),plot(t,y1),axis([0 1 -2 2])
subplot(2,2,3),plot(t,y2),axis([0 1 -2 2])
subplot(2,2,4),plot(t,y3),axis([0 1 -2 2])
