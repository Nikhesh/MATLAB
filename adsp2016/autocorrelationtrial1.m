clc
clear all
close all
tau=-10:10;
alpha=3;
acf=exp(-alpha.*abs(tau));
plot(tau,acf)