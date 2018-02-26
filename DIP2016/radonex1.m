%To obtain Radon transform of a line
clc
clear all
close all
%S1: To generate the line image
im=zeros(256);
im(128,:)=1;
im(138,:)=1;
im(158,:)=1;
im(198,:)=1;
% im(:,128)=1;
%S2: To define theta
theta=0:180;
[p,q]=radon(im,theta);
imshow(im),figure,imshow(p,[],'xdata',theta,'ydata',q),
