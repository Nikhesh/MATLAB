%To design a notch filter
clc
clear all
close all
%Step 1: Generate composite signal
fs=8000;
f1=500;
f2=1000;
f3=1500;
input=[1,zeros(1,8999)]; %Input to resonator
w1=2*pi*(f1/fs);
w2=2*pi*(f2/fs);
w3=2*pi*(f3/fs);
num1=[1];
den1=[1,-2*cos(w1),1];
num2=[1];
den2=[1,-2*cos(w2),1];
num3=[1];
den3=[1,-2*cos(w3),1];
x1=filter(num1,den1,input);
x2=filter(num2,den2,input);
x3=filter(num3,den3,input);
x=[x1,x2,x3];
soundsc(x)
% %Step 2: Notch filter design
fnotch=1500;
w=2*pi*(fnotch)/fs;
num=[1,-2*cos(w),1];
den=1;
y=filter(num,den,x);
% freqz(num,den,1024,fs),figure,zplane(num,den)
 soundsc(x),pause,soundsc(y)