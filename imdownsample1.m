%Downsampling of the image
clc
clear all
close all
M=input('Enter the downsampling factor:');
im=checkerboard(32);
im_down=im(1:M:end,1:M:end);
imshow(im),figure,imshow(im_down)