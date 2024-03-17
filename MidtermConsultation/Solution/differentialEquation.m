function dY = differentialEquation(t, Y, modelParams)

% t - independent variable of the Y(t) function (time)
% Y - state vector as Y(t) = [y(t) dy(t)] (dY(t) = [dy(t) ddy(t)])

%% Get model parameters from modelParams struct
m = modelParams.MASS;
c1 = modelParams.SPRING_CONST_1;
c2 = modelParams.SPRING_CONST_2;
k = modelParams.DAMPER_CONST;

%% Define u and du (inputs)
if t >= 0.1
    u = 1;
    du = 0;
else
    u = t * 1 / 0.1;
    du = 1 / 0.1;
end

%% Express differential equation system
% extract elements of Y(t) state vector
y = Y(1);
dy = Y(2);

% initialize dY with a two-element NaN vector:
dY = NaN(2, 1); 
% 1. equation of equation system (dY(1) = dy(t) = Y(2) = dy(t)):
dY(1) = dy; 
% 2. equation of equation system (dY(2) = ddy(t) = c1 * (u - y) ...):
dY(2) = 1 / m * (c1 * (u - y) + k * (du - dy) - c2 * y); 


end