%Significance of MA system
clc
clear all
close all
%Step 1: Read the input signal
load DataEOG.txt
x=DataEOG;
%Step 2: Smoothen the data using MA filter
h=1/15*ones(1,15);
%Step 3: Filter the signal x using h
y=conv(x,h);
subplot(2,1,1),plot(x)
subplot(2,1,2),plot(y)