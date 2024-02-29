function [average, deviation] = computeStatistics(array)
% This function is intended to compute the statistics of an arbitrary array
% including the average and the standard deviation.
average = computeAverage(array);
deviation = computeDeviation(array, average);
end