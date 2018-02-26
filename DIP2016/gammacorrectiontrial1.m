%Gamma correction
clc
clear all
close all
gamma=0.2;
input_im=imread('spine.tif');
output_im=imadjust(input_im,[0, 1],[0, 1],gamma);
imshow(input_im),figure,imshow(output_im)