%Comparison of MA filters
clc
clear all
close all
%Define the 3 filters
M1=4;
M2=6;
M3=58;
%Impulse response of the MA filters
h1=1/M1*ones(1,M1);
h2=1/M2*ones(1,M2);
h3=1/M3*ones(1,M3);
p=length(h3)
for i=1:p
    h4(i)=(-1).^i*h3(i);
end
%Read the input image
im=imread('testim1.tif');
im1=conv2(im,h1,'same');
im2=conv2(im,h2,'same');
im3=conv2(im,h4,'same');
imshow(im),figure,imshow(im1),figure,imshow(im2),figure,imshow(im3)