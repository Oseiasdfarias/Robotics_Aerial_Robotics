
%1. Pergunta 1: Which of the following matrices are rotation matrices?
clear all, clc, close all

A1 = [[sqrt(2)/2, 0, sqrt(2)/2]
      [0, 1, 0]
      [-sqrt(2)/2, 0, sqrt(2)/2]];

 A1*A1';
  
A2 = [[0.2120  0.7743  0.5963]
      [0.2120 -0.6321  0.7454]
      [0.9540 -0.0316 -0.2981]]
A2*A2'

A3 = [[cos(1) -sin(1)]
      [sin(1) cos(1)]];
A3*A3'

A4 = [[0.3835 0.5730 0.9287 ]
     [0.5710 0.5919 -0.4119]
     [-1.3954 0.0217 1.1105]]
 
 A4*A4'


  

%%
clear all, clc, close all

syms psi theta phi real

Z1 = [[cos(psi) -sin(psi) 0],
     [sin(psi) cos(psi)  0 ],
     [0         0        1 ]]
 
 Y = [[cos(theta), 0,  sin(theta)  ],
      [0,          1,  0           ],
      [-sin(theta)  ,  0 cos(theta)]]
  
  Z2 = [[cos(phi) -sin(phi) 0],
     [sin(phi) cos(phi)  0 ],
     [0         0        1 ]]
 
 Z2*Y*Z1
 
 %% 3.Pergunta 3 At a given time tt, the rotation matrix R has the value: 
 
 clear all, clc, close all
 
 wb = [[ 0     -1         0.9689]
       [ 1      0        -0.2474]
       [-0.9689 0.2474 0     ]];
  

 
 R = [0.675, -0.1724, 0.7174;
     0.2474, 0.9689, 0;
     -0.6951, 0.1775, 0.6967];

RD = inv(R')*wb;


RD*R'


%% 4.Pergunta 4
% Given the following rotation matrix, 
% what is the corresponding axis-angle 
% representation assuming the angle is restricted to 
clear all, clc, close all 

A = [[0.2919,     0.643,   -0.7081]
     [-0.643,    -0.4161,  -0.643  ]
     [-0.7081,    0.643,    0.2919 ]]

%[V,D] = eig(A);
e = eig(A)
 
 
A*A'
  
