% This script is intended to introduce simple linear algebric matrix
% operations in Matlab

%% Arithmetic operations on matrices
matrix1 = randi([1 10], 10, 10);
matrix2 = randi([1 10], 10, 10);

% Addition and substraction
sumMatrix = matrix1 + matrix2;
differenMatrix = matrix1 - matrix2;

% Multiply a matrix by a scalar
twiceMatrix = 2 * matrix1;

% Matrix multiplication
productMatrix = matrix1 * matrix2;

% Dot multiplication (element-wise)
dotProductMatrix = matrix1 .* matrix2;

% Power
squareMatrix = matrix1^2;
squareMatrixOtherForm = matrix1 * matrix1;
isEqualMatrix = squareMatrix == squareMatrixOtherForm

% Dot power (element-wise)
squareElementMatrix = matrix1.^2;
powerMatrix = matrix1.^matrix2;

% Divide matrix by a scalar
quotientElementMatrix = matrix1 / 3;

%% Division between matrices
% A*x = b linear system of equation solution: x = A \ b (= b * inv(A) )
% Example:
% Solve the following linear equation system:
% 3x1 + 2x2 = 8, x1 + 2x2 = 12
A = [3, 2;
     1, 2];
b = [8; 
    12];
xSolution = A \ b;

%% Basic matrix functions
randomMatrix = randi(10, 4, 4);
% Inverse
inverseMatrix = inv(randomMatrix);

% Determinant
matrixDeterminant = det(randomMatrix);

% Rank
matrixRank = rank(randomMatrix); % the number of linearly independent rows

% Trace (the sum of diagonal elements)
matrixTrace = trace(randomMatrix);

% Matrix exponential: e^M = complicated power series :) 
matrixExponent = expm(randomMatrix);

% Square root of a matrix: B is square root of A if B * B' = A
squareRootMatrix = sqrtm(randomMatrix);
% Is it true? 
squareMatrix = squareRootMatrix * squareRootMatrix;

% Logarithm of a matrix
logarithmMatrix = logm(randomMatrix);

%% Eigen value and eigen vector
A = randi(10, 2);
% A * v = lambda * v --- > lambda ~ eigen value, v ~ eigen vector
lambda = eig(A);
% In general: A * V = V * D --- > the columns of V ~ eigen vectors,
% diagonal elements of D ~ eigen values
[V, D] = eig(A);