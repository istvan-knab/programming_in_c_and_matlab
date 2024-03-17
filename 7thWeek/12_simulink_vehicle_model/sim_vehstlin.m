% Simulate single track linear vehicle model
%% Clear workspace
clear;
close all;
clc;
%% Load input
vehstlin_input;
%% Simulate model
mdl = 'vehstlin_mdl_callback_mask2_inout';
% Load model if necessary
if ~bdIsLoaded(mdl)
    open_system(mdl);
end
% Set stop time of simulation according to input
set_param(mdl, 'StopTime', num2str(t_in(end)));
% Save model
save_system(mdl);
% Run simulation
tic;
sim(mdl);
toc;
%% Display results
fprintf('End position is (x, y) = (%f, %f).\n', y_out(end, 5), y_out(end, 6));
plot_vehstlin;
