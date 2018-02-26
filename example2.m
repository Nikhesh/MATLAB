%To implement folding
clc
clear all
close all
x='level';
% n=-10:10;
% x=(n>=0);
%Folded version of x
y1=fliplr(x); %using built-in function
y2=x(end:-1:1);%without using built-in function
if(x==y2)
    disp('Palindrome')
else
    disp('Not a palindrome')
end
% subplot(2,1,1),stem(n,x,'filled','b','linewidth',2)
% subplot(2,1,2),stem(n,y2,'filled','r','linewidth',2)