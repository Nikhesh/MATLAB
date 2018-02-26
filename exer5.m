clc
clear all
close all
inp=imread('rice.png');
lpf=[0.5, 0.5];
hpf=[0.5, -0.5];
y1=conv2(inp,lpf,'same');
y2=conv2(inp,hpf,'same');
imshow(inp),figure,imshow(uint8(y1)),figure,imshow(y2)