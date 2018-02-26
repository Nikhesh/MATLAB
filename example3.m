%To implement shifting operation
clc
clear all
close all
n=-10:10;
x=(n>=0);
m=-5;
y=((n-m)>=0);
subplot(2,1,1),stem(n,x,'filled','b','linewidth',2)
subplot(2,1,2),stem(n,y,'filled','r','linewidth',2)