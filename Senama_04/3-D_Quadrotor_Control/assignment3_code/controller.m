function [F, M] = controller(t, state, des_state, params)
%CONTROLLER  Controller for the quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [x; y; z], state.vel = [x_dot; y_dot; z_dot],
%   state.rot = [phi; theta; psi], state.omega = [p; q; r]
%
%   des_state: The desired states are:
%   des_state.pos = [x; y; z], des_state.vel = [x_dot; y_dot; z_dot],
%   des_state.acc = [x_ddot; y_ddot; z_ddot], des_state.yaw,
%   des_state.yawdot
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls


% =================== Your code goes here ===================



% Params Quadrotor
g = params.gravity;
m = params.mass;

% current state of the robot

% state.pos = [x; y; z]
x = state.pos(1);
y = state.pos(2);
z = state.pos(3);

% state.vel = [x_dot; y_dot; z_dot]
x_dot = state.vel(1);
y_dot = state.vel(2);
z_dot = state.vel(3);

% state.rot = [phi; theta; psi]

phi = state.rot(1);
theta = state.rot(2);
psi = state.rot(3);

% state.omega = [p; q; r]
p = state.omega(1);
q = state.omega(2);
r = state.omega(3);


% desired states
%des_state.pos = [x; y; z]
x_des = des_state.pos(1);
y_des = des_state.pos(2);
z_des = des_state.pos(3);

% des_state.vel = [x_dot; y_dot; z_dot]
x_des_dot = des_state.vel(1);
y_des_dot = des_state.vel(2);
z_des_dot = des_state.vel(3);

% des_state.acc = [x_ddot; y_ddot; z_ddot]
x_des_ddot = des_state.acc(1);
y_des_ddot = des_state.acc(2);
z_des_ddot = des_state.acc(3);

% des_state.yaw, des_state.yawdot
yaw_des = des_state.yaw;
yaw_des_dot = des_state.yawdot;

kp3 = 100;
kd3 = 20;

u1 = (m*g) - (m*(kd3*z_dot) + kp3*(z - z_des));

%Thrust
F = u1;

% Moment
M = zeros(3,1);

% Attitude Control

kp1 = 200;
kd1 = 40;

kp2 = 200;
kd2 = 40;

k_pphi   = 100;
k_dphi   = 2;

k_qtheta = 100;
k_dtheta = 2;

k_rpsi   = 100;
k_dpsi   = 2;

acc_x = (x_des_ddot + kd1*(x_des_dot - x_dot) + kp1*(x_des - x));
acc_y = (y_des_ddot + kd2*(y_des_dot - y_dot) + kp2*(y_des - y));

p_des = 0;
phi_des = (1/g)*(acc_x * sin(yaw_des) - acc_y*cos(yaw_des));
u2_phi = (k_pphi*(phi_des - phi) + (k_dphi*(p_des - p)));

q_des = 0;
theta_des = (1/g)*(acc_x * cos(yaw_des) + acc_y*sin(yaw_des));
u2_theta = (k_qtheta*(theta_des - theta)) + (k_dtheta*(q_des - q));

psi_des = yaw_des;
r_des = yaw_des_dot;
u2_psi = (k_rpsi*(psi_des - psi)) + (k_dpsi*(r_des - r));

u2 = [u2_phi; u2_theta; u2_psi];

M = u2;

% =================== Your code ends here ===================

end
