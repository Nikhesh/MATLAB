%Linear convolution using Toeplitz matrix
clc
clear all
close all
x=input('Enter the values:');
h=input('Enter the values:');
n=length(x);
h=[h,zeros(1,n-1)];
p=[h(1),zeros(1,n-1)];
t=toeplitz(h,p);
y=(t*x')'
