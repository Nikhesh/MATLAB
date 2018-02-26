clc;
clear all;
close all;

fs=20;
t=0:1/fs:1
x=sin(2*pi*10*t);
mu=0;sigma=1;
noise= sigma *randn(1,21)+mu;
y=x+noise;
h=1/11*ones(11,1);
a=filter(h,1,y);
fvtool(a,1,'fs',fs),