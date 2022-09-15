clear all;
close all;
clc 
%%
%
R = 6.3;
G = 0.005;
f = 100*10^6;
w = 2*pi*f;
C = 115.62*10^-12;
L = 289.05*10^-9;

Zo = sqrt((R+j*w*L)/(G+j*w*C));
Z_f = abs(Zo); %% Impedancia final 
Z_ang = angle(Zo)*180/(pi) 

%%
l = 0.1;
gamma = sqrt((R+j*w*L)*(G+j*w*C));
Zl = 80 + j;
Zin = Zo* (Zl+Zo*tanh(gamma*l))/(Zo+Zl*tanh(gamma*l));
Zin_abs = abs(Zin);

