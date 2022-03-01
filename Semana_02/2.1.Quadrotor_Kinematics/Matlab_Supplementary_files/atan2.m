% Função atan2
clear all, clc, close all

% Função tangente tan() normal, ela não
% leva em consideração em qual quadrante
% o angulo se encontra.

x = pi
y = 6
x/y

a = tan(x/y)
atan(a)

%% usando a função atan2
clear all, clc, close all

x = 1
y = 1


% A função atan2 leva em consideração em qual 
% quadrante o angulo se encontra

atan2(x, y)
atan2(-1, -1)

atan2(1, 0)
atan2(-1, 0)