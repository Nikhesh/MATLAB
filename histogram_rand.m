%Histogram of rand function
clc
clear all
close all
x=randn(10000,1);
[p,q]=hist(x,10);
subplot(2,1,1),plot(x),
subplot(2,1,2),bar(q,p) %Plotting the histogram