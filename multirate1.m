%upsamling followed by downsampling
clc
clear all
close all
x=wavread('voice.wav');
y1=downsample(x,2);
y2=upsample(y1,2);
soundsc(x),pause,soundsc(y2)