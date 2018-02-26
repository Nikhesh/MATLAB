%3 point MA filter
clc
clear all
close all
%Input signal
x=imread('liftingbody.png');
%Impulse response
L=11;
h=1/L*ones(1,L);
%Output of the system
y=conv2(x,h,'same');
z=double(x)-double(y);
z1=double(x)+double(z);
%Plot the input and output
imshow(x),figure,imshow(uint8(y)),figure,
imshow(z),figure,imshow(uint8(z1))

% %Pole-zero plot
% zplane(h),figure,
% %Frequency response
% freqz(h)