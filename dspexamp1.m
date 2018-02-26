%Generation of sine waves
clc
clear all
close all
f1=1;
f2=5;
f3=10;
f4=20;
t=linspace(0,1,100);
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
x4=sin(2*pi*f4*t);
subplot(2,2,1),
plot(t,x1),title(['Frequency:',num2str(f1),'Hz'])
subplot(2,2,2),
plot(t,x1),
title(['Frequency:',num2str(f2),'Hz'])
subplot(2,2,3),
plot(t,x1),
title(['Frequency:',num2str(f3),'Hz'])
subplot(2,2,4),
plot(t,x2),
title(['Frequency:',num2str(f4),'Hz'])