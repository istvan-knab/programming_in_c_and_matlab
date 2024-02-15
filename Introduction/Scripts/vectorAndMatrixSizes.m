% This script is intended to demonstrate how the sizes and number of
% matrix elements can be reached in Matlab.

% Creating a random matrix to work with
randomMatrix = randi(10, 4, 3); % creating random matrix with 4 rows and 3 columns (between 1 and 10)

% Gett all dimensions of an array as a row vector
szMatrix = size(randomMatrix);

% Get number of rows (first dimension)
numOfRows = size(randomMatrix, 1);

% Get number of columns (second dimension)
numberOfColumns = size(randomMatrix, 2);

% Number of all elements
numberOfElements = numel(randomMatrix);

% The greatest dimension
greatestDimension = length(randomMatrix);

% Three dimensional array
threeDimArray = randi(10,4, 3, 5);
szThreeDimArray = size(threeDimArray);