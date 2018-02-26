%To plot the scaling and wavelet function
clc
clear all
close all
wav='nar1';
itr=10;
for i=1:itr
    [phi,psi,x]=wavefun(wav,i);
end
subplot(2,1,1),plot(x,phi)
xlabel('t'),ylabel('Amplitude'),title('\phi(t)')
subplot(2,1,2),plot(x,psi)
xlabel('t'),ylabel('Amplitude'),title('\psi(t)')

