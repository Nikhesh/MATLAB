clc;
clear all;
close all;
n=-10:10;
x1=(n>=5);
x2=(n>=-5);
x3=x2-x1;
stem(n,x3,'filled','linewidth',2)
s=1:21;
Energy=sum((abs(x3(s))).^2)
disp('Energy is finite')


