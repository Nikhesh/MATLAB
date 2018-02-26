%Convolution of x[n] with delta[n]
clc
clear all
close all
%Step 1: Generation of x[n]:sine wave
t=linspace(0,1,100);
x=square(2*pi*5*t);
%Step 2: Generation of delta(n)
h=[zeros(1,20),1,zeros(1,79)];
%Step 3: Perform the convolution
y=filter(h,1,x);
subplot(3,1,1),plot(t,x),
axis([0 1 -2 2]),title('x[n]')
subplot(3,1,2),stem(h,'filled'),title('h[n]')
subplot(3,1,3),plot(t,y),
axis([0 1 -2 2]),title('y[n]')