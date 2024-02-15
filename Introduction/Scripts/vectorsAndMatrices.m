%% Vectors 

% Row vectors
rowVectorWithSpaces = [1 2 3] % Row vector with spaces
rowVectorWithCommas = [1, 2, 3] % Row vector with commas

% Column vectors
columnVector = [1; 2; 3] % Column vector elements always separated by semicolons

% A row vector can be easily transformed to a column vector and vica versa
% by transpozing the variables: 
columnVectorFromRowVector = rowVectorWithCommas';
rowVectorFromColumnVector = columnVector';

%% Matrices
% Matrices can be defined by its elements. In a given row elements can be
% given similarly to row vector elemens. The rows of the matrices are
% separated by semicolons. 
matrixWithSpaces = [1 2 3;
                    4 5 6];
matrixWithCommas = [1, 2, 3;
                    4, 5, 6];
% The interpreter does not care about the linebreaks in matrix declaration,
% but it is wortk to visualize properly the matrices.
matrixWithoutLineBreaks = [1 2 3; 4 5 6];

% Matrices can be transposed as well.
matrixTransposed = matrixWithSpaces';

%% Special vectors and matrices
% Vectors
rowVectOnes = ones(1,10); % vector consisting of 1 row and 10 columns with values 1
% Take care about naming: Never name a variable as a built-in function or
% variable e.g. ones. 
columnVectOnes = ones(10,1); % vector consisting of 10 rows and 1 column, with values 1

rowVectZeros = zeros(1,10);
columnVectZeros = zeros(10,1);

% NaN is a built-in Matlab type standing for "not a number". In Matlab the
% value of a variable will be NaN if the operation results 0/0.
variableNaNWithOperation = 0/0;
variableNaN = NaN;

% NaN is very useful to represent "invalid" elements of vectors and
% matrices. But it is important to note that using NaNs requires high
% concentration on handling them (this will be shown later)
rowVectorNaN = NaN(1,10);
columnVectorNaN = NaN(10,1);

% Random vectors 
% rand() function generates uniformly distributed random numbers between 0 and 1
% randi(n) function generates uniformly distributed random integers between 1 and n
randomRowVector = rand(1,10); % random vector (between 0 and 1)
randomColumnVector = randi(19,10,1); % random integer vector (between 1 and 19)

% Matrices
% Special matrices can be easily constructed by changing the dimension that
% has a value 1.

onesMatrix = ones(3,3); % Square matrix with ones
zerosMatrix = zeros(4,3); % Matrix with 4 rows and 3 columns 
nanMatrix = NaN(10,5); 
randomMatrix = rand(4,4);
randomIntegerMatrix = randi(19,4,3);

% Identity matrix and diagonal matrix
identityMatrix = eye(3); % 3 by 3 identity matrix (square)
generalIdentityMatrix = eye(4,6); % 4 by 6 matrix identity matrix

diagonalMatrixWithProduct = 6 * identityMatrix;
diagVector = [1 2 3 4];
diagonalMatrix = diag(diagVector);

% Arithmetic series
seriesVect = 0 : 19; % creates a row vector with 20 elements increasing by 1
seriesVectOther = 0 : 2 : 20; % creates a row vector with given difference

% Empty variable
emptyVariable = [];

%% Concatenating vectors and matrices

concatenatedMatrix = [randomRowVector', randomColumnVector]; % Concatenating along columns
otherMatrix = randi(100, 5, 2);
otherConcatenatedMatrix = [concatenatedMatrix; otherMatrix]; % Concatenating along rows

repeatedMatrixColumn = repmat(concatenatedMatrix, 1, 2); % Repeating matrix along columns
repeatedMatrixRow = repmat(concatenatedMatrix, 2, 1); % Repeating matrix along columns
threeDimensionalArray = repmat(concatenatedMatrix, 1, 1, 3); % Repeating matrix along third dimension
