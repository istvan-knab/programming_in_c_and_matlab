function [minValue, minIdx] = minmaxCustom(array, mode)
% This function is intended to find the minimum or maximum value of an 
% array consisting of arbitrary number of dimensions. It also provides 
% the index of the maximum value with subscripts. If the second input of
% the function is 0, then it searches the minimum, otherwise the maximum.

% Finding the maximum of the original array is the same problem as 
% finding the minimum of the array multiplied by -1. 
if mode
    array = -array;
end

szArray = size(array);
reshapedArray = array(:);
minValue = inf;

for i = 1 : numel(reshapedArray)
    if reshapedArray(i) <= minValue
        minValue = reshapedArray(i);
        linearMinIdx = i;
    end
end

minIdx = linearIndexToSubstripts(szArray, linearMinIdx);

end