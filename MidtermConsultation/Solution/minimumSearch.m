%% Search function minimum
% create function handle referring to boothFunction Matlab function
boothFcnHandle = @(x, y) boothFunction(x, y);
% create function handle with one vector parameter for optimization
boothOptimFcnHandle = @(xyVect) boothFcnHandle(xyVect(1), xyVect(2));

% initial point of the optimization
xy0 = [0, 0];
% call fminsearch to find the minimum
[xyMin, minValue] = fminsearch(boothOptimFcnHandle, xy0);

%% Visualization
% Create figure and axis for visualization
figureObject = figure();
axisObject = axes(figureObject);

% Define discrete x and y values where we visualize the function
xVect = -10 : 0.1 : 10;
yVect = -10 : 0.1 : 10;
% Create grid representation of x-y plane
[xGrid, yGrid] = meshgrid(xVect, yVect);

% Compute z values of Booth function corresponding to the x-y grid points
zValues = boothFcnHandle(xGrid, yGrid);

% Visualize with surf command
surf(axisObject, xGrid, yGrid, zValues, 'EdgeColor', 'none');

% Visualize the minimum
hold(axisObject, "on")
scatter3(axisObject, xyMin(1), xyMin(2), minValue, 70, 'red', 'filled')
hold(axisObject, "off")
