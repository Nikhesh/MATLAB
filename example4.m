clc
clear all
close all
n=-10:10;
x=(-1).^n;
p=length(x);
del=[0,0,1,zeros(1,p-3)];
y=conv(x,del);
subplot(2,1,1),stem(x,'filled','b','linewidth',2)
subplot(2,1,2),stem(y(1:length(x)),'filled','r','linewidth',2)