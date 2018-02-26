clc
clear all
close all
im=imread('C:\Documents and Settings\student\Desktop\image3.jpg');
im1=rgb2gray(im);
h1=1/9*ones(3);  % 3 x 3 LPF mask
h2=1/25*ones(5);  % 5 x 5 LPF mask
h3=1/49*ones(7);% 7 x 7 LPF mask
y1=conv2(im1,h1,'same');
y2=conv2(im1,h2,'same');
y3=conv2(im1,h3,'same');
imshow(im1),figure,imshow(uint8(y1)),figure,
imshow(uint8(y2)),figure,imshow(uint8(y3))
