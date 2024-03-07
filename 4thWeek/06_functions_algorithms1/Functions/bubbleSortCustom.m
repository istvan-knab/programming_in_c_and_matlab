function array = bubbleSortCustom(array)
% This function sorts the elements of a given vector based on the 
% bubble sort algorithm
% The input and output of the function is the same variable since the
% function directly manipulates the order of the input array; therefore,
% there is no need for a separate output variable.

numElements = numel(array);
% Identifying the subvector on what the inner for cycle shall be performed
for lastElementInd = numElements : -1 : 2
    % The inner cycle reorders the elements of the subvector
    for elementId = 1 : lastElementInd - 1
        % Swapping neighbors if necessary
        if array(elementId) > array(elementId + 1)
            auxiliaryVar = array(elementId);
            array(elementId) = array(elementId + 1);
            array(elementId + 1) = auxiliaryVar;
        end
    end
end
end