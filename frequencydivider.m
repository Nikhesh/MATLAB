clc
clear all
close all
lo = 0.136;
hi = 0.317;
ord = 4;
rip = 12;
[zw,pw,kw] = cheby1(ord,rip,lo);
[zm,pm,km] = cheby1(ord/2,rip,[lo hi]);
[zt,pt,kt] = cheby1(ord,rip,hi,'high');
zplane([zw zm zt],[pw pm pt])
lg = legend('Woofer','Midrange','Tweeter');
sw = zp2sos(zw,pw,kw);
sm = zp2sos(zm,pm,km);
st = zp2sos(zt,pt,kt);
load handel               % To hear, type soundsc(y,Fs)
yw = sosfilt(sw,y);        % To hear, type soundsc(yw,Fs)
ym = sosfilt(sm,y);        % To hear, type soundsc(ym,Fs)
yt = sosfilt(st,y);% To hear, type soundsc(yt,Fs)
soundsc(y)%,pause,soundsc(yw),pause,soundsc(ym),pause,soundsc(yt)
% fvtool(y),figure,fvtool(yw),figure,fvtool(ym),figure,fvtool(yt)
