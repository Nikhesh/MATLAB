clc
clear all
close all
%Define input signal
x1=ones(1,100)
n=linspace(0,1,100)
x2=sin(2*pi/2*n)
h1=[0.5,0.5]   %LPF
h2=[0.5,-0.5]  %HPF
h=conv(h1,h2)  %BPF
y1=conv(x1, h)
y2=conv(x2,h)
subplot(2,2,1),stem(x1,'filled'),title('Input1')
subplot(2,2,2),stem(x2,'filled'),title('Input2')
subplot(2,2,3),stem(y1(1:length(x1)),'filled'),title('First output')
subplot(2,2,4),stem(y2(1:length(x2)),'filled'),title('Second output')
