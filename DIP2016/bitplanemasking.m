%Masking of bit planes
clc
clear all
close all
im=imread('cameraman.tif');
%Bit plane masking
im1=bitand(im,bin2dec('11100000'));
imshow(im),figure,imshow(uint8(im1))