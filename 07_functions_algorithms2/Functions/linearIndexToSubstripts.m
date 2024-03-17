function subscripts = linearIndexToSubstripts(szArray, linearIdx)
% This function is intended to convert the linear index of an array
% elements with arbitrary number of dimensions to subsricpts.
numOfDimensions = numel(szArray);
subscripts = zeros(1, numOfDimensions);
for j = numOfDimensions : -1 : 1
    precedingDimensions = szArray(1:j - 1);
    if isempty(precedingDimensions)
        subscripts(j) = linearIdx;
        return
    end
    numOfElementsInDimension =  prod(precedingDimensions);
    flooredQuotient = floor((linearIdx - 1) / numOfElementsInDimension);
    subscripts(j) = flooredQuotient + 1;
    linearIdx = linearIdx - ...
        numOfElementsInDimension * flooredQuotient;
end

end