%Moving average filter for images
clc
clear all
close all
%Step 1: Read the image
im=imread('rice.png');
%Step 2: Define the system
h=[1/7,-1/7,1/7,-1/7,1/7,-1/7,1/7];
%Step 3: To obtain the output
y=conv2(im,h,'same');
%Step 4: Display the input and output
imshow(im),figure,imshow(mat2gray(y))