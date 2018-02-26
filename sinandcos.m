clc
clear all
close all
x1=ones(1,5);
x2=zeros(1,10);
x=[x1,x2];
y=repmat(x,[1,16]);
plot(y),axis([0 240 -2 2])