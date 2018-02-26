%Appending of sine waves
clc
clear all
close all
f1=5;
f2=10;
t=linspace(0,1,100);
t1=linspace(0,1,300);
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x=[x1,zeros(1,length(x1)),x2];
plot(t1,x)