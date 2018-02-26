%Autocorrelation of white noise
clc
clear all
close all
w=randn(1,10000); %10,000 samples of white noise
[p,q]=xcorr(w); %ACF of white noise
% plot(q,p)
h=fir1(20,0.5,'low');  %LPF
y=conv(w,h);
[p1,q1]=xcorr(y);
subplot(3,1,1),
plot(q,p),xlim([-30,30])
subplot(3,1,2),
plot(q1,p1),xlim([-30,30]),
subplot(3,1,3),plot(impz(h))
