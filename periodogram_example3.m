%To obtain periodogram of the signal
clc
clear all
close all
%Step 1: Generate the signal
f1=5;
f2=10;
Fs=100;
t=0:1/Fs:10;
x=sin(2*pi*f1*t)+sin(2*pi*f2*t);
periodogram(x,[],'onesided',1024,Fs);