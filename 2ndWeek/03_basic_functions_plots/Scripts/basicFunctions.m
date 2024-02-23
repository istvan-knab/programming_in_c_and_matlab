%% Creating a matrix and a vector to work with
randomMatrix = randi(100, 4); % creating a 4 by 4 matrix with random integers between 1 and 100
seriesVector = 1:7; %creating a row vector with 7 elements from 1 to 7 increasing by 1

%% Sum and product of vect and matrix elements
% Sum of the vector elements
sumOfVector = sum(seriesVector);
% Summing matrix elements along the rows (1st dimension)
sumOfEachMatrixColumn = sum(randomMatrix, 1);
sumOfMatrixRowsOtherForm = sum(randomMatrix);
% Summing matrix elements along the columns (2nd dimension)
sumOfEachMatrixRow = sum(randomMatrix, 2);
% Sum of all elements
sumOfMatrixElements = sum(randomMatrix, 'all');
sumOfMatrixElementsOtherForm = sum(randomMatrix(:));
sumOfMatrixElementsOtherForm2 = sum(sum(randomMatrix(:))); % not suggested to use
% Sum of array elements along an arbitrary dimension: sum(array, dim) e.g.:
summingDimension = 3;
numOfRepets = 5;
threeDimArray = repmat(randomMatrix, [1 1 numOfRepets]);
sumOfMatrixThirdDim = sum(threeDimArray, summingDimension);
matrixElementQuotient = sumOfMatrixThirdDim ./ randomMatrix;

% Product of vector elements
prodOfVector = prod(seriesVector);
factorial7 = prod(seriesVector);
% Product of each matrix column
prodOfEachMatrixColumn = prod(randomMatrix, 1);

%% Euclidean norm: the Euclidean length of a vector
vectorVariable = [1 2 3];
lengthOfVector = norm(vectorVariable);
%% Min / max

% Min value of a vector/matrix
minValueVect = min(seriesVector);

% Max value and max index of vector/matrix
[maxColValues, maxRowIdxs] = max(randomMatrix); % max of each columns
[maxRowValues, maxColIdxs] = max(randomMatrix, [], 2); % max of each rows
maxValue = max(randomMatrix,[], 'all'); % max of each columns

%% Arithmetics
randVector = rand(1,100);
% Mean value ~ average 
meanValue = mean(randVector);

% Cumulative sum and product
cumulativeSum = cumsum(randVector);

cumulativeProd = cumprod(randVector);

% Differences ~ numerical derivative
timeVect = 0:0.1:10;
positionVect = cos(timeVect);
numerDerivative = diff(positionVect) ./ diff(timeVect);
numerDerivative = [0, numerDerivative]; % Starting velocity 0

% Second derivative
numerDerivative2 = diff(positionVect, 2) ./ diff(timeVect, 2); % diff(diff())

% Moving sum
movingSum2 = movsum(randVector, 2); 
movingSum3 = movsum(randVector, 3);

%% Noise filtering with moving mean
noisyMeasurement = positionVect + rand(size(timeVect));
filteredMeasurementSymmetric = movmean(noisyMeasurement, 20);
filteredMeasurementBackward = movmean(noisyMeasurement, [20 0]);
filteredMeasurementForward = movmean(noisyMeasurement, [0 20]);
filteredMeasurementBackwardForward1 = movmean(noisyMeasurement, [15 4]);
filteredMeasurementBackwardForward2 = movmean(noisyMeasurement, [4 15]);
figure(1);
hold on;
plot(timeVect, noisyMeasurement);
plot(timeVect, filteredMeasurementSymmetric);
plot(timeVect, filteredMeasurementBackward);
plot(timeVect, filteredMeasurementForward);
legend({'Noisy measurement', 'Filtered with symmetric window', ...
    'Filtered with backward-looking', 'Filtered with forward-looking'})

