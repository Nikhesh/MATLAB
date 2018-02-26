clc
clear all
close all
%generation of input signal
f1=10;
fs=1000;
fn=fs/2;
fc=f1/fn;
L=1/fc;
h=[1,zeros(1,L-1),1];
%generation of input signal
t1=linspace(0,1,1000);
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*3*f1*t1);
x3=sin(2*pi*5*f1*t1);
x=x1+x2+x3;
%passing signal to comb filter
y=filter(h,1,x);
%plotting the result
subplot(2,2,1),zplane(h),title('pole zero plot')
subplot(2,2,2),impz(h),title('Impulse response')
subplot(2,2,3),plot(t1,x),axis([0 1 -3 3])
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(2,2,4),plot(t1,y),axis([0 1 -3 3])
xlabel('t'),ylabel('Amplitude'),title('Output signal')
