%Convolution through Toeplitz matrix
clc
clear all
close all
x=[1 2 3 4];
h=[1 1];
h=[h,zeros(1,length(x)-1)];
p=[h(1),zeros(1,length(x)-1)];
t=toeplitz(h,p);
y=(t*x')'