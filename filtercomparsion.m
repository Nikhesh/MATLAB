%Analysing the performance of 3 filters
clc
clear all
close all
load phdist
y1=filter(b1,a1,xnoise);
y2=filter(b2,a2,xnoise);
y3=filter(b3,a3,xnoise);
soundsc(xnoise,8000),pause,soundsc(y1,8000),
pause,soundsc(y2,8000),pause,soundsc(y3,8000)
