%FIR filter as ALL-ZERO filter
clc
clear all
close all
h=fir1(200,0.5);
impz(h)