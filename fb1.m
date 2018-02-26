%Two channel filterbank implementation
clc
clear all
close all
%Step 1: Define the input signal
t=linspace(0,1,100);
x=sin(2*pi*5*t);
%Step 2: Define the analysis and synthesis filter
h0=[0.25,0.25,0.25,0.25];
h1=[.25,-0.25,0.25,-0.25];
g0=[.5,0.5,0.5,0.5];
 g1=[-0.5,0.5,-0.5,0.5];
%Step 3: Trace the filterbank
x1=conv(x,h0);
x2=conv(x,h1);
x3=downsample(x1,2);
% x3=zeros(1,length(x3));
x4=downsample(x2,2);
x4=zeros(1,length(x4));
x5=upsample(x3,2);
x6=upsample(x4,2);
x7=conv(x5,g0);
x8=conv(x6,g1);
y=x7+x8;
%Step 4: To plot the input and output signals
plot(t,x,t,y(1:length(t))),
axis([0 1 -2 2]),legend('Input','Output')

