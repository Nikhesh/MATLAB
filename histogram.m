%histrogram of rand function
clc
clear all
close all
x=randn(10000,1);
y=rand(10000,1)
[p,q]=hist(x,10);
[v,w]=hist(y,10);
subplot(4,1,1),plot(x),xlabel('randn'),
subplot(4,1,2),bar(q,p)
subplot(4,1,3),plot(y),xlabel('rand'),
subplot(4,1,4),bar(w,v)%Plotting the histogram