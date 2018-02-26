%Generation of sine wave of multiple frequency
clc
clear all
close all
%Define the three frequencies
f1=0;
f2=5;
f3=10;
t=linspace(0,1,100);
t1=linspace(0,1,300);
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
y=[x2,x1,x3];
plot(t1,y)