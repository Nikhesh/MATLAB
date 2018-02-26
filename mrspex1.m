%MRSP
clc
clear all
close all
load chirp
u=downsample(y,2);
y1=upsample(u,2);
v=upsample(y,2);
y2=downsample(v,2);
soundsc(y),pause,
soundsc(y1),
pause,soundsc(y2)
