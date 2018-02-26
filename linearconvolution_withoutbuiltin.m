%To perform the linear convolution between two sequences
clc
clear all
close all
x=input('Enter the sequence:');
h=input('Enter the sequence:');
n1=length(x);
n2=length(h);
X=[x,zeros(1,n2)];
H=[h,zeros(1,n1)];
for i=1:n1+n2-1
    y(i)=0;
    for j=1:n1
        if (i-j+1)>0
            y(i)=y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
subplot(3,1,1),stem(x,'filled'),
xlabel('n'),ylabel('Amplitude'),title('x[n]')
subplot(3,1,2),stem(h,'filled'),
xlabel('n'),ylabel('Amplitude'),title('h[n]')
subplot(3,1,3),stem(y,'filled'),
xlabel('n'),ylabel('Amplitude'),title('y[n]')