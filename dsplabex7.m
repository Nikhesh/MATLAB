clc
clear all
close all
t=linspace(0,1,1000);
f1=100;
f2=200;
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x=[x1,x2];
d1=sin(2*pi*f1*t.^2);
d2=sin(2*pi*f2*t.^2);
d=[d1,d2];
soundsc(d)
