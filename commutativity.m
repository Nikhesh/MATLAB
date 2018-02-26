clc
clear all
close all
x=1:5;  %input
M=2;
L=2;
p=downsample(x,M);
y1=upsample(p,L);
q=upsample(x,L);
y2=downsample(q,M);