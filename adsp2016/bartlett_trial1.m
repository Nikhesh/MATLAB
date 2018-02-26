%Convolution of rectangular function
clc
clear all
close all
%Step 1: To generate a rectangular function
n=-100:100;  %time index
x=(n>=-25& n<=50); %Rectangular function
y=fliplr(x);
z=conv(x,y)
subplot(3,1,1),plot(n,x),axis([-100 100 -2 2])
subplot(3,1,2),plot(n,y),axis([-100 100 -2 2])
subplot(3,1,3),plot(z)