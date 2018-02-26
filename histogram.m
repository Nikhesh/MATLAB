%histrogram of rand function
clc
clear all
close all
x=randn(10000,1);
y=rand(10000,1)
[p,q]=hist(x,10);
[v,w]=hist(y,10);
subplot(4,1,1),plot(x),title('RANDN SIGNAL'),xlabel('RANDN'),
subplot(4,1,2),bar(q,p),title('HISTOGRAM OF RANDN SIGNAL'),                 %Plotting the histogram of randn
subplot(4,1,3),plot(y),title('RAND SIGNAL'),xlabel('RAND'),
subplot(4,1,4),bar(w,v),title('HISTOGRAM OF RANDN SIGNAL')                 %Plotting the histogram of rand