%To display the magnitude and phase of an image
clc
clear all
close all
im1=imread('cameraman.tif');
IM1=fft2(im1);
mag1=abs(IM1);
ph1=angle(IM1);
im2=imread('rice.png');
IM2=fft2(im2);
mag2=abs(IM2);
ph2=angle(IM2);
n1=mag1.*exp(i*ph2);
n2=mag2.*exp(i*ph1);
y1=ifft2(n1);
y2=ifft2(n2);
subplot(2,2,1),imshow(im1),title('Input image-1')
subplot(2,2,2),imshow(im2),title('Input image -2')
subplot(2,2,3),imshow(uint8(y1)),title('Output image-1')
subplot(2,2,4),imshow(uint8(y2)),title('Output image-1')


,