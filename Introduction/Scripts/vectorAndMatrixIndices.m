% This script is intended to demonstrate vector and matrix indexing 
% techniques in Matlab

%% Create random vector and matrix to work with
randomVector = rand(1, 4); % creating random row vector with 4 elements
randomMatrix = randi(10, 4, 3); % creating random matrix with 4 rows and 3 columns (between 1 and 10)

%% Scalar indexing

% Selecting one element from vector/matrix
vectorElement = randomVector(2); % selecting the 2nd element of vector
matrixElement = randomMatrix(1, 2); % selecting the second elements of first row

% Selecting a row / column of the matrix
matrixThirdRow = randomMatrix(3,:);
matrixThirdColumn = randomMatrix(:,3);

%% Linear indexing: continous column vector 

% Reshaping matrix to vector:
reshapedMatrix = randomMatrix(:); % column vector is created by concatenating its columns continously

% In case of, linear indexing the matrix is interpreted as a vector created 
% from concatenated columns of the matrix.The 10th of the matrix 
% (10th element of reshapedMatrix) is the 3rd element of the 2nd row 
% since the matrix has 4 rows and 3 columns:
matrixElement10 = randomMatrix(10); % = reshapedMatrix(10)

%% Matrix indexing with vectors
matrixElements2323 = randomMatrix(2:3, 2:3); % Submatrix: second and third rows and columns

% Using end
lastVectorElement = randomVector(end);
lastMatrixElement = randomMatrix(end);

matrix13End = randomMatrix(1, 3:end); % selecting all elements from third column in the first row

% Matrix indexing with series
matrixEvenOdd = randomMatrix(2:2:end, 1:2:end); % selecting the even rows and odd columns

%% Logical indexing
vectorElementsGreaterThanHalf = randomVector(randomVector > 0.5);

isEven = (mod(randomMatrix,2) == 0);
evenMatrixElements = randomMatrix(isEven);