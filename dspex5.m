%Convolution of x(n) with delta(n)
clc
clear all
close all
%S1: Generation of delta(n)
n=-5:5;
x1=(n==0);
x2=(-1).^n;
%Perform convolution
y=conv(x1,x2);
n1=n(1)+n(1):n(end)+n(end);
%Displaying the result
subplot(3,1,1),stem(n,x1,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_1(n)'),
subplot(3,1,2),stem(n,x2,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_2(n)'),
subplot(3,1,3),stem(n1,y,'filled'),
xlabel('n'),ylabel('Amplitude'),title('y(n)'),

