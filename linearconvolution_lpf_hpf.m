clc
clear all
close all
%Define input signal
x1=ones(1,100)
n=0:100
x2=(-1).*n
h1=[0.5,0.5]   %LPF
h2=[0.5,-0.5]  %HPF
y1=conv(x1, h1)
y2=conv(x2,h2)
subplot(2,2,1),stem(x1,'filled'),title('Input1')
subplot(2,2,2),stem(x2,'filled'),title('Input 2')
subplot(2,2,3),stem(y1(1:length(x1)),'filled'),title('output1')
subplot(2,2,4),stem(y2(1:length(x2)),'filled'),title('output2')
