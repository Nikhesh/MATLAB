%Implementation of Accumulator
clc
clear all
close all
%Define the input
n=-10:10;
x=(n==0);
y=zeros(1,length(x));
%Define the system
y(1)=x(1);
for i=2:length(x)
    y(i)=x(i)+y(i-1);
end
subplot(2,1,1),stem(n,x,'filled'),
xlabel('n'),ylabel('Amplitude'),title('Input signal'),
subplot(2,1,2),stem(n,y,'filled'),
xlabel('n'),ylabel('Amplitude'),title('Output signal'),