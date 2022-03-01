% Supplementary Material: Symbolic Calculations in Matlab
clear all, clc, close all

syms a b real

x = (a+b)^2

% Expandindo esse Binômio
expand(x)

% Simplificando expressões

y = (a/2)^2/a

% usando cosseno e seno e simplificando a solução

z = sin(a)^2 + cos(a)^2
simplify(z)

%%  Definindo Matrizes em termos de a e b
clear all, clc, close all

syms a b real

A = [a 0 b; 0 -a 0; 0 1 0];
B = [2*a b exp(a); cos(a) 0 0; -a b/a 0];

% Multiplicando as matrizes
A*B

% Encontrando a Matriz Transposta de A
A
A'

% Podemos encontrar os autovetores e autovalores das matrizes
[V, D] = eig(A)

% Podemos encontrar a matriz inversa 
inv(B)

% Podemos encontrar o Determinante da Matriz
det(B)



%% Trabalhando com matrizes de rotação
%  Exemplo Matriz de rotação ZYZ (Euler)

clear all, clc, close all

syms phi theta psi real

R1 = [cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0; 0 0 1];
R2 = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
R3 = [cos(psi) -sin(psi) 0; sin(psi) cos(psi) 0; 0 0 1];

simplify(R1*R2*R3)
















