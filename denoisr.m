clc
clear a
close all
t=linspace(0,1,100);
x=sin(2*pi*2*t);
y=x+rand(1,100);
% [c,l] = wavedec(y,1,'db1');
thr=0.4;
% NC=wthcoef('d',c,4,0);
Y1 = wthresh(y,'h',thr);
Y2 = wthresh(y,'s',thr);
% X = waverec(c,l,'db1');
plot(t,x),figure,plot(t,y),figure,plot(t,Y1(1:length(t))),figure,plot(t,Y2(1:length(t)));