%Bit plane extraction
clc
clear all
close all
im=imread('cameraman.tif');
for i=1:8
    b1=bitget(im,i);
    subplot(2,4,i),imshow(b1,[])
end
% %Extraction of bitplanes
% b1=bitget(im,1); %LSB bit plane
% b2=bitget(im,2);
% b3=bitget(im,3);
% b4=bitget(im,4);
% b5=bitget(im,5);
% b6=bitget(im,6);
% b7=bitget(im,7);
% b8=bitget(im,8);
% %To display the bit planes
% subplot(2,4,1),imshow(b1,[]),
% subplot(2,4,2),imshow(b2,[]),
% subplot(2,4,3),imshow(b3,[]),
% subplot(2,4,4),imshow(b4,[]),
% subplot(2,4,5),imshow(b5,[]),
% subplot(2,4,6),imshow(b6,[]),
% subplot(2,4,7),imshow(b7,[]),
% subplot(2,4,8),imshow(b8,[])
