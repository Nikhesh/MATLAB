%To generate unit step sequence
clc
clear all
close all
n=-5:5;
x=(n>=0);
stem(n,x,'fill'),
xlabel('n'),ylabel('Amplitude'),title('Unit Step Sequence') 
