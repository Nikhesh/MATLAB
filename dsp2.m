clc;
clear all;
close all;
n=-10:10;
x1=((0.5).^n).*(n>=0);
x2=(n>=-5)-(n>=5);
x3=(n>=0)-(n>=5);
subplot(3,1,1),stem(n,x1,'filled','linewidth',2),
subplot(3,1,2),stem(n,x2,'filled','linewidth',2),
subplot(3,1,3),stem(n,x3,'filled','linewidth',2),


