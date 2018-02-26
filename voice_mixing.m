%voice+noise
clc
clear all
close all
x1=waveread('voice.wav');
p=length(x1)
n=0:p-1;
x1=sin(2*pi*1000/8000*n);
x=[x1,x2'];
a=[0.75;0.25]
y=x*a;
w=2*pi*(1000/8000);
r=0.95;
num=[1,-2*cos(w),1]
den=[1,-2*cos(w),r*r]
z=filter(num,den,y);
player1=audioplayer(x1,8000);
play(player1),pause
player2=audioplayer(x2,8000);
play(player2),pause
player3=audioplayer(y,8000);
play(player3),pause
player4=audioplayer(z,8000);
play(player4);
