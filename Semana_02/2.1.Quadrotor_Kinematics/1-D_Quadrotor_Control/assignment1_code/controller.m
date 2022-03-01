function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

% FILL IN YOUR CODE HERE

%keyboard

kp = 250;
kv = 30;
g = params.gravity;
m = params.mass;

zddot_des = 0;

e = s_des(1) - s(1);
e_dot = s_des(2) - s(2);

u = m*(zddot_des + kp*e + kv*e_dot + g);


end

