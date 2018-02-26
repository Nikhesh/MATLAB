%Generation of DT sinusoid
clc
clear all
close all
n=0:1:100;
w=-pi;
x1=exp(j*w*n);
k=1;
x2=exp(j*(w+2*pi*k)*n);
subplot(2,1,1),stem(n,x1,'filled','linewidth',2),
subplot(2,1,2),stem(n,x2,'filled','linewidth',2),
 
