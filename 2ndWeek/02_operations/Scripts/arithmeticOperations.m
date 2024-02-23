% This script is intended to inroduce the simple arithmetic operations in
% Matlab.

%% Operations with scalars

scalarVariable1 = 2;
scalarVariable2 = 3;

% Addition and substraction
sumOfVariables = scalarVariable1 + scalarVariable2;
differenceOfVariables = scalarVariable1 - scalarVariable2;

% Multiplication and division
twiceOfVariable1 = scalarVariable1 * 2;
halfOfVariable2 = scalarVariable2 /2;
productOfVariables = scalarVariable1 * scalarVariable2;
quotientOfVariables = scalarVariable1 / scalarVariable2;

% Powers
squaredVariable = scalarVariable1^2;
powerVariable = scalarVariable1^scalarVariable2;
expOfVariable = exp(scalarVariable1); % exp(x) = e^x

%% Operations with vectors

% Addition and substraction
rowVector1 = [1 2 3];
rowVector2 = [4 5 6];
columnVector1 = [1; 2; 3];
columnVector2 = [4; 5; 6];

sumOfVectors = rowVector1 + rowVector2;
differenceOfVectors = columnVector2 - columnVector1;

% Multiply a vector by a scalar
twiceVector = 2 * rowVector1;

% Scalar multiplication
productValue = rowVector1 * columnVector1;

% Dot multiplication
productVector = rowVector1 .* rowVector2;

% Diadic multiplication
productMatrix = columnVector1 * rowVector2;

% Dot division
quotientVector = columnVector1 ./ columnVector2;

% Power
squaredVector = rowVector1.^2;
powerVector = rowVector1.^rowVector2;