%AR system-Digital resonator
clc
clear all
close all
%Step 1: Input excitation
t=linspace(0,1,100);
x=sin(2*pi*10*t);

%Step 2: Define the system
den=[1];
f=10;
fs=100;
w=2*pi*(f/fs);
r=1.0;
num=[1,-2*r*cos(w),r*r];
%Step 3: To get the output
y=filter(num,den,x);
%Step 4: Plotting the result
subplot(3,1,1),stem(x,'filled'),
title('Input excitation')
subplot(3,1,3),plot(y),
title('Output signal'),
subplot(3,1,2),zplane(num,den)