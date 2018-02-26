clc
clear all
close all
[x,y]=meshgrid(0:1/128:255/128,0:1/128:255/128);
f=cos(128*pi*((x-1).^2+(y-1).^2));
h=fspecial('gaussian',[5 5]);
f1=conv2(f,h,'same');
imshow(abs(f),[]),figure,imshow(f1,[])