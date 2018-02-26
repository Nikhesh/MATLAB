%Analysing Butterworth, Chebyshev and Elliptic filter
clc
clear all
close all
Wp = .1;  
Ws = .15;
Rp=0.5;
Rs=20;
[N1,w1]=buttord(Wp,Ws,Rp,Rs,'s');
[N2,w2]=cheb1ord(Wp,Ws,Rp,Rs,'s');
[N3,w3]=cheb2ord(Wp,Ws,Rp,Rs,'s');
[N4,w4]=ellipord(Wp,Ws,Rp,Rs,'s');