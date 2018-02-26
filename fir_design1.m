%To get the impulse response of FIR filter
clc
clear all
close all
%Step 1: Filter specification
wc=0.5;  %Cut-off frequency
M=9;    %Order of the filter
N=M+1;  %Number of coefficients
t=(N-1)/2;
for n=1:N
    if(n==(t+1))
        hd(n)=wc/pi;
    else
        hd(n)=sin(wc*(n-t-1))/(pi*(n-t-1));
    end
end
fvtool(hd)

