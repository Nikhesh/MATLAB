clc
clear all
close all
t=linspace(0,1,100);
x=sin(2*pi*5*t);    %Input signal
n=rand(1,length(x));
x1=x+n; %Corrupted signal
M1=3;
M2=5;
M3=7;
M4=9;
h1=1/M1*ones(1,M1);
h2=1/M2*ones(1,M2);
h3=1/M3*ones(1,M3);
h4=1/M3*ones(1,M4);
y1=filter(h1,1,x1);
y2=filter(h2,1,x1);
y3=filter(h3,1,x1);
y4=filter(h4,1,x1);
subplot(2,3,1),plot(t,x),
subplot(2,3,2),plot(t,x1),
subplot(2,3,3),plot(t,y1),
subplot(2,3,4),plot(t,y2),
subplot(2,3,5),plot(t,y3),
subplot(2,3,6),plot(t,y4),