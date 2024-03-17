%% Define model parameters
modelParams.MASS = 20; %kg
modelParams.SPRING_CONST_1 = 2; %N/m
modelParams.SPRING_CONST_2 = 3; %N/m
modelParams.DAMPER_CONST = 24; %Ns/m

%% Create function handle from differential equation
diffEquationFcnHandle = @(t, Y) differentialEquation(t, Y, modelParams);

%% Solver differential equaion
timeSpan = [0 25]; %sec
Y0 = [0, 0];
[timeVect, YMat] = ode45(diffEquationFcnHandle, timeSpan, Y0);

% reconstruct u input (optional for visualization)
saturationValue = 1;
staturationTime = 0.1;
inputVect = min(timeVect * saturationValue / staturationTime, ...
    saturationValue);

%% Visualization
fig = figure;
axDisplacement = subplot(2,1,1);
hold(axDisplacement, 'on')
plot(axDisplacement, timeVect, YMat(:,1), 'Color', 'red', ...
    'LineWidth', 1.5)
plot(axDisplacement, timeVect, inputVect, 'Color', 'blue', ...
    'LineWidth', 1.5)
hold(axDisplacement, 'off')
xlabel('Time [s]')
ylabel('Displacement [m]')
legend(axDisplacement, 'Mass displacement', 'Input')

axVelocity = subplot(2,1,2);
plot(axVelocity, timeVect, YMat(:,2), 'Color', 'red', ...
    'LineWidth', 1.5)
xlabel('Time [s]')
ylabel('Velocity [m/s]')