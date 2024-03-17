function avgRatio = computeAverageRatio(matrix)

average = mean(matrix, 'all');
isGreaterThanAvg = matrix > average;
numOfGreaterElems = sum(isGreaterThanAvg, 'all');
avgRatio = numOfGreaterElems / numel(matrix);

end