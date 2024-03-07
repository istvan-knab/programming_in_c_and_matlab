function average = computeAverage(array)
% This function is intended to compute the average of an array with
% arbitrary number of dimensions.
average = sum(array, 'all') / numel(array);
end