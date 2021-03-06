clc
clear all
close all
%Step 1: Signal generation
% fs=100;
% t=0:1/fs:1;
% f1=3;
% f2=25;
% x=sin(2*pi*f1*t)+sin(2*pi*f2*t);
t=0:0.01:1.00;
x=square(2*pi*5*[0:0.01:1]);
%Step 2: LPF 
h=1/11*ones(1,11);
l=length(h);
for i=1:l
    h1(i)=(-1).^i*h(i);
end
y=conv(x,h);
%Step3: Plot the input and output
subplot(2,1,1),plot(t,x),axis([0 1 -2 2])
subplot(2,1,2),plot(t,y(1:length(t))),axis([0 1 -2 2])