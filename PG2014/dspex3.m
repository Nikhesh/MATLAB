clc
clear all
close all
t=linspace(0,1,100); %time vector
choice=input('Enter 1: sin 2:cos 3:sawtooth 4:sqare');
switch(choice)
    case 1
        x=sin(2*pi*5*t);
        plot(t,x)
    case 2
        x=cos(2*pi*5*t);
        plot(t,x)
    case 3
        x=sawtooth(2*pi*5*t);
        plot(t,x)
    case 4
        x=square(2*pi*5*t);
        plot(t,x)
    otherwise
        disp('Wrong choice')
end
