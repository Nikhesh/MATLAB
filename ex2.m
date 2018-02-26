%To generate unit step signal
clc
clear all
close all
n=-10:10;
x=n.*(n>=0);
stem(n,x,'filled'),
xlabel('n'),ylabel('Amplitude'),
title('r[n]')