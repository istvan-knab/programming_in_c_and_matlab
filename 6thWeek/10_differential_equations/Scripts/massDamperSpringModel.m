% This code solves the second-order linear differential equation of a
% mass-spring-damper model. The differential equation is solved by the
% Matlab built-in ode solver. This solver can handle only first-order
% differiential equations. Thus, we derive a first-order representation of
% the orriginal differential equation. 

%% Loading model parameters and input
modelInput = load('mdsInput.mat');
modelParams = load('modelParams');
%% Solving the linear differential equation
% Initial values
X0 = [0;   % initial velocity [m/s]
      0.1];  % initial position [m]
% Time interval for the "simulation"
timeSpan = [0, 15]; % [s]
% Solver
[t, XMat] = ode45(@(t,X) massSpringDamperModel (t, X, modelParams, modelInput), ...
    modelInput.timeVect, X0);

%% Results
fig = figure('Color', 'white');

ax1 = axes(fig);
subplot(2, 1, 1, ax1);
plot(ax1, t, XMat(:, 1), 'r-', 'LineWidth', 1.5);
ylabel(ax1, 'velocity [m/s]');
xlabel(ax1, 'time [s]');
grid(ax1, 'on');

ax2 = axes(fig);
subplot(2, 1, 2, ax2);
hold(ax2, 'on')
plot(ax2, t, XMat(:, 2), 'r-', 'LineWidth', 1.5);
plot(ax2, modelInput.timeVect, modelInput.inputVect, 'blue')
hold(ax2, 'off')
ylabel(ax2, 'position [m]');
xlabel(ax2, 'time [s]');
grid(ax2, 'on');