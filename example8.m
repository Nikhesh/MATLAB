clc
clear all
close all
im=imread('cameraman.tif');
hpf=[-1 -1 -1; -1 8 -1; -1 -1 -1];
im1=conv2(im,hpf,'same');
im2=double(im)+double(im1);
imshow(im),figure,imshow(im1),figure,imshow(uint8(im2))