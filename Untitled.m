%HWR and FWR

clc
clear all
close all
t=linspace(0,1,100);
s1=sin(2*pi*5*t);
s2=sin(2*pi*5*t+15);
y=xcorr(s1,s1);
plot(y),figure,
z=crosscorr(s1,s2);
plot(z)