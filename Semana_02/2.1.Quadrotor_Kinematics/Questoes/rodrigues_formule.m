% Questionar - Axis/Angle Representation

% calculate the rotation matrix corresponding to the 
% axis u= [3^(1/2), 3^(1/2), 3^(1/2)] and angle phi = 2*pi/3.
clear all; clc; close all;

theta = (2*pi)/3;
%theta = pi/2

a1 = sqrt(3)/3;
a2 = sqrt(3)/3;
a3 = sqrt(3)/3;

%a1 = 0
%a2 = 0
%a3 = 1

u = [a1; a2; a3];

u_hat = [[0, -a3, a2],
         [a3, 0, -a1],
         [-a2, a1, 0]];

I = eye(3);
%u_hat*sin(theta)



rot = I*cos(theta) + u*u'*(1 - cos(theta)) + u_hat*sin(theta)

%%
clear all; clc; close all;

syms o

R = [[cos(o), sin(o), 0];
     [-sin(o), cos(o) , 0];
     [0     , 0      , 1]];
 

RD = [[-sin(o), -cos(o), 0 ];
      [cos(o) , -sin(o), 0 ];
      [0      , 0      , 0 ]];

R*RD


