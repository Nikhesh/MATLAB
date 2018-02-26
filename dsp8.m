clc;
clear all;
close all;
n=-10:10;
x=((0.5).^n).*(n>=0);
stem(n,x,'filled','linewidth',2);