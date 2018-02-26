clc
clear all
close all
w1=0;
w2=pi;
n=-10:10;
x1=exp(j*w1*n);
x2=exp(j*w2*n);
N=5;
for i=1:floor(N/2)
    h(i)=((-1).^i)/i;
end
h=[-fliplr(h),0,h];
y1=filter(h,1,x1);
y2=filter(h,1,x2);
subplot(2,2,1),stem(n,x1,'filled'),title('Input signal-1')
subplot(2,2,2),stem(n,y1,'filled'),title('Output signal-1')
subplot(2,2,3),stem(n,x2,'filled'),title('Input signal-2')
subplot(2,2,4),stem(n,y2,'filled'),title('Output signal-2')
