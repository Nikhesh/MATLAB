%Difference between HPF and HBF
clc
clear all
close all
im=imread('rice.png');
k=1.5;
h1=[-1 -1 -1; -1 8 -1; -1 -1 -1];
h2=[-1 -1 -1; -1 8+k -1; -1 -1 -1];
im1=conv2(im,h1,'same');
im2=conv2(im,h2,'same');
imshow(im),figure,imshow(im1,[]),figure,imshow(im2,[])