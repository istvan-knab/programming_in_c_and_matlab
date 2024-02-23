% This script is intended to inroduce the simple logical operations in
% Matlab.

randomVector1 = randi(100, 1, 10);
randomVector2 = randi(100, 1, 10);

%% Relational operations

% Compare to scalar
isGreaterThan50 = randomVector1 > 50;
isNotGreaterThan50 = (randomVector1 <= 50);
isGreaterThan50 = ~isNotGreaterThan50;
isEqualTo50 = randomVector1 == 50;
isNotEqualto50 = randomVector1 ~= 50;

% Element wise (if the sizes are the same)
isEqualElements = randomVector1 > randomVector2;

%% Logical opertations
% Logical OR
isNotLessThan50 = isGreaterThan50 | isEqualTo50;
% Logical AND
isEqualTo50 = isNotLessThan50 & isNotGreaterThan50;
% Logical XOR 
xorResult = xor(isNotLessThan50, isEqualTo50);

%% Scalar logics

scalarValue1 = 10;
scalarValue2 = 15;
thresholdValue = 10;

isBothGreaterThanThreshold = (scalarValue1 > thresholdValue) && ...
    (scalarValue2 > thresholdValue);
isOneOfThemGreater = (scalarValue1 > thresholdValue) || ...
    (scalarValue2 > thresholdValue);
