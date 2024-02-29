function deviation = computeDeviation(array, average)
% This function is intended to compute the standard deviation of an array 
% with arbitrary number of dimensions based on the average of the array
% elements. If the function is called with one input argument (average is
% missing), it is computed first by the computeAverage function.
if nargin == 1
    average = computeAverage(array);
end
squareDifference = (array - average).^2;
deviation = sqrt(sum(squareDifference, 'all') / numel(array));

end