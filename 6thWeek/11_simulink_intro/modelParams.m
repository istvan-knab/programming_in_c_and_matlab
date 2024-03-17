% This script defines the parameters of the mass-spring-damper model
% implemented in Simulink

m = 1; % mass [kg]
d = 3; % damper constant [Ns/m]
s = 10; % spring constant [N/m]

% State transition matrix for state space representation
A = [-d/m, -s/m;    % acceleration (Newton II law)
        1,    0];   % integrating
% Input matrix
B = [1 / m;         % acceleration (Newton II law)
         0];        % input does not affect directly the position