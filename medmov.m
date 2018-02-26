%To understand the median filter
clc
clear all
close all
%Step 1: 
x=ones(1,100);
x(1,50)=2;
h=[1/3,1/3,1/3];
%To introduce the spike
y=medfilt1(x);
y1=filter(h,1,x);
subplot(3,1,1),stem(x,'filled'),title('Input signal'),
subplot(3,1,2),stem(y,'filled'),title('Median filter output'),
subplot(3,1,3),stem(y1,'filled'),title('MA filter output'),