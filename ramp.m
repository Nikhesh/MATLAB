clc
close all
clear all 
%Generation of unit ramp signal
n=-5:5
x=n.*(n>=0)
y=stem(n,x,'filled')
xlabel('n'),ylabel('Amplitude')
title('Unit Ramp signal')