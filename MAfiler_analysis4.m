clc
clear all
close all
num=[1];
den=[1,1];
n=-10:10;
x1=(n==0);
x2=(n>=0);
y1=filter(num,den,x1);
y2=filter(num,den,x2);
subplot(2,2,1),stem(n,x1,'filled'),
xlabel('n'),ylabel('Amplitude'),title('\delta(n)')
subplot(2,2,2),stem(n,x2,'filled'),
xlabel('n'),ylabel('Amplitude'),title('u(n)')
subplot(2,2,3),stem(n,y1,'filled'),
xlabel('n'),ylabel('Amplitude'),title('y_1(n)')
subplot(2,2,4),stem(n,y2,'filled'),
xlabel('n'),ylabel('Amplitude'),title('y_2(n)')
