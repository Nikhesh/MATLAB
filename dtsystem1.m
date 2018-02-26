clc
clear all
close all
num=[1 2];
den=[1 0.5];
[H,w]=freqz(num,den);
h=impz(num,den);
n=-10:10;
x1=ones(1,length(n));
x2=(-1).^n;
y1=conv(x1,h);
y2=conv(x2,h);
subplot(4,2,1),zplane(h),
subplot(4,2,2),plot(w,abs(H)),title('Magnitude response')
subplot(4,2,3),impz(h),
subplot(4,2,4),plot(w,angle(H)),title('Phase response')
subplot(4,2,5),stem(n,x1,'filled'),title('Input signal-1')
subplot(4,2,6),stem(n,y1(1:length(n)),'filled'),title('Output signal-1')
subplot(4,2,7),stem(n,x2,'filled'),title('Input signal-1')
subplot(4,2,8),stem(n,y2(1:length(n)),'filled'),title('Output signal-2')

