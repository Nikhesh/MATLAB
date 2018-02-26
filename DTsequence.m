%Generation of DT sequence
clc
clear all
close all
%Generation of unit sample sequence
n=-10:10;
x1=(n==0); %Unit sample sequence
x2=(n>=0); %Unit step sequence
x3=n.*(n>=0); %Unit ramp sequence
w=pi;
x4=exp(j*w*n);  %Complex exponential sequence
%Plotting the four sequences
subplot(2,2,1),stem(n,x1,'filled'),
xlabel('n'),ylabel('Amplitude'),
title('\delta(n)')
subplot(2,2,2),stem(n,x2,'filled'),
xlabel('n'),ylabel('Amplitude'),
title('u(n)')
subplot(2,2,3),stem(n,x3,'filled'),
xlabel('n'),ylabel('Amplitude'),
title('r(n)')
subplot(2,2,4),stem(n,x4,'filled'),
xlabel('n'),ylabel('Amplitude'),
title('x(n)')