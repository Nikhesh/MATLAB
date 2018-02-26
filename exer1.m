%To generate unit sample signal
clc
clear all
close all
n=-5:5; % Defining the x-axis
choice=input('Enter 1:Unit sample,2:Unit step, 3: Unit ramp');
switch(choice)
    case 1
        x=(n==0);%Unit sample sequence
        stem(n,x)
    case 2
       y=(n>=0); %Unit step sequence
       stem(n,y)
    case 3
        z=(n>=0).*n; %unit ramp sequence
        stem(n,z)
    otherwise
        disp('Improper choice')
end

        




% subplot(3,1,1),stem(n,x)
% subplot(3,1,2),stem(n,y)
% subplot(3,1,3),stem(n,z)
