% Create input data for simulation of the motion of a single track linear vehicle model
%% Time of simulation
t_start = 0;
t_step  = 0.1;
t_stop  = 14;
%% Input data of simulation
% Time data
t_in = (t_start:t_step:t_stop)';
% Steering angle excitation data (step to 1deg at 1s, then step to -1deg at 6s,
% then step back to 0 at 11s)
u_in = (1 / 180 * pi) * ((t_in > 2.0) - 2 * (t_in > 7.0) + (t_in > 12.0));