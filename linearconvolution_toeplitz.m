%Linear convolution through Toeplitz matrix
clc
clear all
close all
x=input('Enter the sequence:');
h=input('Enter the sequence:');
n=length(x);
h=[h,zeros(1,n-1)];
p=[h(1),zeros(1,n-1)];
t=toeplitz(h,p);    %Constructing Toeplitz matrix
y=(t*x')';