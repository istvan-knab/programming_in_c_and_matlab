% This script demonstrates how one can solve simple differential equations
% with given initial value
%% Inputs
% The interval of the solution (e.g., time interval)
tStart = 0;
tEnd = 10;
% Initial value y(tStart) = y0
y0 = 10;

%% Solve the dy(t, y) = t, with y(0) = 10 differential equation
% Exact solution: t^2 / 2 + C -> at t = 0 y = 10 -> C = 10 => y(t) = t^2/2 + 10
% Function handle of the differential equation
diffEquationFcnHandle = @(t, y) t;
% The solution
[tVect, yVect] = ode45(diffEquationFcnHandle, [tStart, tEnd], y0);

%% Plotting the results
fig = figure();
ax = axes(fig);
hold(ax, 'on');
plot(ax, tVect, yVect);
plot(ax, tVect, tVect.^2/2+10);