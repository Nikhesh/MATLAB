% zoom the input image using Kronecker product
clc
clear all
close all
in=checkerboard(8);
k=input('Enter the zoom factor:');
m=ones(k);
output=kron(double(in),double(m));
imshow(in),figure,imshow((output))