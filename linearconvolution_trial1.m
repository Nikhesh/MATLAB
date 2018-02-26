%Linear convolution
clc
clear all
close all
%Define the input signal
x1=ones(1,100);
n=linspace(0,1,100);
x2=sin(2*pi/4*n);
%Define the impulse responses
h1=[0.5,0.5];       %LPF
h2=[0.5,-0.5];     %HPF
h=conv(h1,h2);      %BPF
%Obtain the outputs
y1=conv(x1,h);
y2=conv(x2,h);
%Plotting the results
subplot(2,2,1),stem(x1,'filled'),
title('Input signal-1'),
subplot(2,2,2),stem(x2,'filled'),
title('Input-2'),
subplot(2,2,3),stem(y1(1:length(x1)),'filled'),
title('Output-1'),
subplot(2,2,4),stem(y2(1:length(x2)),'filled'),
title('Output-1'),
