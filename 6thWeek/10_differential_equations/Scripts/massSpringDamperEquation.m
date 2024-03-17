function dX = massSpringDamperEquation(t, X, modelParamStruct, modelInput)
%% Get model parameters
m = modelParamStruct.MASS; % [kg] mass
d = modelParamStruct.DAMPER_CONST; % [N.s/m] damper constant
s = modelParamStruct.SPRING_CONST; % [N/m] spring constant
%% Computing the input value based on interpolation
timeVect = modelInput.timeVect;
inputVect = modelInput.inputVect;
u = interp1(timeVect, inputVect, t);
%% State representation of the model
% State transition matrix
A = [-d/m, -s/m;    % acceleration (Newton II law)
        1,    0];   % integrating the velocity
% Input matrix
B = [1 / m;         % acceleration (Newton II law)
       0];          % input has no indirect effect to position
dX = A * X + B * u;
end