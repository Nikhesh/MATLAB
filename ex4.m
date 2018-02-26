%Understanding of subplots
clc
clear all
close all
n=-10:10;
x1=(n==0);
x2=(n>=0);
subplot(1,2,1),stem(n,x1,'filled'),
subplot(1,2,2),stem(n,x2,'filled'),