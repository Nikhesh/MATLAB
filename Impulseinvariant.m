clc
clear all
close all
num=[1];
den=[1 3 2];
[numz,denz]=impinvar(num,den,1);
tf=tf(numz,denz,1,'Variable','z^-1')
