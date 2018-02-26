%Action of LPF and HPF
clc
clear all
close all
%Step 1: Reading the input image
im=imread('rice.png')
%Step 2: Define the impulse responses
h1=[0.5,0.5];  %LPF
h2=[0.5,-0.5]; %HPF
%Step 3:Obtaining the outputs
y1=conv2(im,h1,'same');
y2=conv2(im,h2,'same');
%Step 4: Plot the results
imshow(im),figure,imshow(uint8(y1)),
figure,imshow((y2))