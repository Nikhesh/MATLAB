%Moving average filter
clc
clear all
close all
%Step 1: Generation of square wave
% f=5;
% t=linspace(0,1,100);
% x=square(2*pi*f*t);
x=imread('cameraman.tif');
%Step2: Define the MA filter
h=1/7*ones(1,7);
%Step 3: Obtain the output signal
y=conv2(x,h,'same');
%Plotting the result
imshow(x),figure,imshow(uint8(y))