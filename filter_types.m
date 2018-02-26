%FIR filter
clc
clear all
close all
%Step 1: Signal generation
fs=8000;
f1=1000;
f2=2000;
f3=3000;
t=0:1/fs:1;
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
x=[x1,x2,x3];
%Step 2: To design a LPF using fir1 function
M=100;
fc1=1500;
fc2=2500;
fn=fs/2;    %Folding frequency
w1=fc1/fn;
w2=fc2/fn;
w=[w1,w2];
h=fir1(M,w,'stop');
%Step 3: To get the output
y=filter(h,1,x);
% soundsc(x),pause,soundsc(y)