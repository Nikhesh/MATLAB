clc
clear all
close all
t=0:0.01:1;
f=1;
x=sin(2*pi*f*t);
l=length(x);
for i=1:l
    if x(i)==1;
        x(i)=-1;
    elseif x(i)==-1
        x(i)=1;
    end
end
y=medfilt1(x,3);
subplot(2,1,1),plot(t,x),axis([0 1 -2 2])
subplot(2,1,2),plot(t,y),axis([0 1 -2 2])