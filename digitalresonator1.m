%Digital resonator
clc
clear all
close all
t1=linspace(0,1,100);
f1=5;
f2=10;
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x=[x1,zeros(1,length(x1)),x2];
t=linspace(0,1,300);
% plot(t,x)

% %Step 2: Define the resonator
r=0.75;
Fs=100;
f=5;
w1=2*pi*(f1/Fs);
num=[1,-2*cos(w1),1];
% den=[1,-2*r*cos(w1),r.^r];
den=[1];
y=filter(num,den,x);
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y),
% f2=5;
% w2=2*pi*(f2/Fs);
% num=[1];
% den1=[1,-2*r*cos(w1),r.^r];
% den2=[1,-2*r*cos(w2),r.^r];
% den=[den1,den2];
% y=filter(num,den,x);
% z=filter(den,num,y);
% subplot(3,1,1),stem(x),
% subplot(3,1,2),plot(y)
% subplot(3,1,3),stem(z)
% figure,zplane(num,den),figure,zplane(den,num)