clc
clear all
close all
f1=5
f2=0
f3=10
t=linspace(0,1,10000)
t1=linspace(0,3,30000)
x=sin(2*pi*f1*t);
y=sin(2*pi*f2*t);
z=sin(2*pi*f3*t);
w=[x y z];
plot(t1,w),xlabel('time'),ylabel('sine signal'),title('sampling');

