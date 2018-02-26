clc
clear all
close all
n=-10:10;
w1=0;
w2=pi/4;
w3=pi/2;
w4=pi;
% k=7;
x1=exp(j*w1*n);
x2=exp(j*w2*n);
x3=exp(j*w3*n);
x4=exp(j*w4*n);
subplot(2,2,1),stem(n,x1,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_1(n)')
subplot(2,2,2),stem(n,x2,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_2(n)')
subplot(2,2,3),stem(n,x3,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_3(n)')
subplot(2,2,4),stem(n,x4,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x_4(n)')

