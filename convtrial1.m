%To prove the property of linear convolution
clc
clear all
close all
%Define the input x[n]
nx=-5:5; %range of the input signal
x=[zeros(1,3),ones(1,5),zeros(1,3)];
%Define the input h[n]
nh=-5:5; % range of impulse response
h=(nh==2);
%Define the output signal
ny=nx(1)+nh(1):nx(end)+nh(end); % range of the output signal
y=conv(x,h);
%Plotting the input and output signal
subplot(3,1,1),stem(nx,x,'filled'),
xlabel('n'),ylabel('Amplitude'),title('Input signal x[n]')
subplot(3,1,2),stem(nh,h,'filled')
xlabel('n'),ylabel('Amplitude'),title('Input signal h[n]=\delta[n]')
subplot(3,1,3),stem(ny,y,'filled')
xlabel('n'),ylabel('Amplitude'),title('Output signal y[n]=x[n]')