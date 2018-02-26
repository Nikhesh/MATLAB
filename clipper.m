clear all
close all
clc
f=1;
a=1;
t=linspace(0,1,100)
x=a*sin(2*pi*f*t);
[p,q,r]=rectifi1(x);
% x1=min(.5,x);
% x2=max(-.5,x1);
subplot(4,1,1),plot(t,x)
subplot(4,1,2),plot(t,p)
subplot(4,1,3),plot(t,q)
subplot(4,1,4),plot(t,r),axis([0 1 -1 1])
