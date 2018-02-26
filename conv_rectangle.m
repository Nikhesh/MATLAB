%To prove convolution of 2 rectangular function 
%will result in a triangular function
clc
clear all
close all
%Step 1: Generate two rectangular functions
x1=ones(1,100);
x2=ones(1,100);
y=conv(x1,x2);
subplot(3,1,1),plot(x1),
subplot(3,1,2),plot(x2),
subplot(3,1,3),plot(y),