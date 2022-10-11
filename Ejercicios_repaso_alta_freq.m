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
%ejer 2      
l = 1;
gamma = sqrt((R+j*w*L)*(G+j*w*C));
Zl = 80 + j*w*10*10^-9;
Zin = Zo* (Zl+Zo*tanh(gamma*l))/(Zo+Zl*tanh(gamma*l))
Zin_abs = abs(Zin)
Zin_anlge = angle(Zin)*180/pi
%%
%neglectin losses
beta = w*sqrt(L*C);
l = 0.01;
Zo = sqrt(L/C);
Zin_lossles = Zo* (Zl+j*Zo*tanh(beta*l))/(Zo+j*Zl*tanh(beta*l))
Zin_lossles_abs = abs(Zin_lossles)
Zin_lossles_ang = angle(Zin_lossles)

l = 0.1;
Zin_lossles = Zo* (Zl+j*Zo*tanh(beta*l))/(Zo+j*Zl*tanh(beta*l))
Zin_lossles_abs = abs(Zin_lossles)
Zin_lossles_ang = angle(Zin_lossles)


l = 1;
Zin_lossles = Zo* (Zl+j*Zo*tanh(beta*l))/(Zo+j*Zl*tanh(beta*l))
Zin_lossles_abs = abs(Zin_lossles)
Zin_lossles_ang = angle(Zin_lossles)

%%
%ejercicico 4
Zo = 75;
er = 2.3;
c = 0.3*10^9;
LperU = 0;

%%
%Ejercicio 5

Vs = 15;
Rs = 75;
Zo = 75;
Zl = 55 - j*30;
Vo_p = Zl +Zo;
Vo_m = Zl - Zo;
reflejo = Vo_m/Vo_p;
Power = 1/2 * abs(Vo_p)^2*(1- (abs(reflejo))^2 )
