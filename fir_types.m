clc
clear all
close all
%Signal generation
n=-10:10;
w1=0;
w2=pi;
x1=exp(j*w1*n);
x2=exp(j*w2*n);
h1=[1/4,1/2,3/4,1/2,1/4];
h2=[1/4,1/2,1/2,1/4];
h3=[1/4,1/2,0,-1/2,-1/4];
h4=[1/4,1/2,-1/2,-1/4];
y1=filter(h4,1,x1);
y2=filter(h4,1,x2)
subplot(2,2,1),stem(n,x1,'filled'),title('LF signal')
subplot(2,2,2),stem(n,x2,'filled'),title('HF signal')
subplot(2,2,3),stem(n,y1,'filled'),title('O/P of Type-I FIR filter')
subplot(2,2,4),stem(n,y2,'filled'),title('O/P of Type-I FIR filter')
% subplot(2,2,1),zplane(h1),title('Type-I')
% subplot(2,2,2),zplane(h2),title('Type-II')
% subplot(2,2,3),zplane(h3),title('Type-III')
% subplot(2,2,4),zplane(h4),title('Type-IV')