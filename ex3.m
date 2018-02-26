%Generation of signal as per user's choice
clc
clear all
close all
n=-10:10;
choice=input('1:unit sample,2:unit step,3:unit ramp');
switch(choice)
    case 1
        x1=(n==0);
        stem(n,x1,'filled'),
        xlabel('n'),ylabel('Amplitude'),title('\delta(n)')
    case 2
        x2=(n>=0);
        stem(n,x2,'filled')
    case 3
        x3=n.*(n>=0);
        stem(n,x3,'filled')
    otherwise
        disp('Wrong choice')
end
