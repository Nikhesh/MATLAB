clc
clear all
close all
x='anua';
% y=x(end:-1:1);
y=fliplr(x);
if(x==y)
    disp('Palindrome')
else
    disp('Not a Palindrome')
    
end

