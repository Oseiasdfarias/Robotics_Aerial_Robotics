function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls

k_vz = 19;
k_pz = 76;

k_vphi = 19;
k_pphi = 75;

k_vy = 19;
k_py = 76;

% Params u1
m = params.mass;
g = params.gravity;
z = state.pos(2);
z_des = des_state.pos(2);
z_dot = state.vel(2);
z_des_dot = des_state.vel(2);

% Params u2
I_xx = params.Ixx;
phi = state.rot;
phi_dot = state.omega;
phi_ddot = 0;
z_ddot = des_state.acc(2);


% Params phi_c
y = state.pos(1);
y_dot = state.vel(1);
y_des = des_state.pos(1);
y_des_dot = des_state.vel(1);
y_ddot = des_state.acc(1);


phi_c = (-1/g)*(y_ddot + k_vy*(y_des_dot - y_dot) + k_py*(y_des - y));
phi_c_dot = -(k_vy*(y_ddot + g*phi) +k_py*(y_des_dot - y_dot))/g;


u1 = m*(g + z_ddot + k_vz*(z_des_dot - z_dot) + k_pz*(z_des - z));
u2 = I_xx*(phi_ddot + k_vphi*(phi_c_dot - phi_dot) + k_pz*(phi_c - phi));


% FILL IN YOUR CODE HERE

end

