%Convolution x(n) with unit sample sequence
clc
clear all
close all
%Step 1: Generate the input sequence
t=linspace(0,1,100);
x=sin(2*pi*5*t);
%Step 2: Generate the unit sample sequence
h=[zeros(1,50),1,zeros(1,49)];
%Step 3: Perform the convolution
y=conv(h,x);
%Step 4: Plot the input and output signal
subplot(2,1,1),plot(t,x),
xlabel('t'),ylabel('Amplitude'),title('x(t)')
subplot(2,1,2),plot(t,y(1:length(t)))
xlabel('t'),ylabel('Amplitude'),title('y(t)')

