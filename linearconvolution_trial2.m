%Action of LPF and HPF
clc
clear all
close all
%Step 1: Generation of AC signal
n=0:99;
x=(-1).^n;
%Step 2: Define the impulse responses
h1=[0.5,0.5];  %LPF
h2=[0.5,-0.5]; %HPF
%Step 3:Obtaining the outputs
y1=conv(x,h1);
y2=conv(x,h2);
%Step 4: Plot the results
subplot(3,1,1),stem(x,'filled'),
title('Input signal')
subplot(3,1,2),stem(y1(1:length(x)),'filled'),
title('Output of LPF')
subplot(3,1,3),stem(y2(1:length(x)),'filled'),
title('Output of HPF')