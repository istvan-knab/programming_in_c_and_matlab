% Evaluating LTI state space matrices of single track linear vehicle model.
function [A, B, C, D] = vehstlin_sseval(m, J, v, c_f, c_r, l_f, l_r)
g   = 9.81; % [m/s^2]   gravitational acceleration
%% Nominal system
% x = [  dy;
%         y
%      dpsi
%       psi];
a11 = - (g * (c_f * l_r + c_r * l_f) / (v * (l_f + l_r)));
a13 = - (v + g * l_f * l_r * (c_f - c_r) / ( v * (l_f + l_r)));
a31 = - (m * g * l_f * l_r *(c_f - c_r) / (J * v * (l_f + l_r)));
a33 = - (m * g * l_f * l_r * (c_f * l_f + c_r * l_r) / (J * v * (l_f + l_r)));
A = [a11, 0, a13, 0; 
       1, 0,   0, 0
     a31, 0, a33, 0;
       0, 0,   1, 0];
% u = delta_f
b11 =   g * c_f * l_r / (l_f + l_r);
b31 =   m * g * c_f * l_f * l_r / (J * (l_f + l_r));
B = [b11;
       0;
     b31;
       0];
% y = dpsi
C = [0, 0, 1, 0];
% no direct feedthrough
D =  0;