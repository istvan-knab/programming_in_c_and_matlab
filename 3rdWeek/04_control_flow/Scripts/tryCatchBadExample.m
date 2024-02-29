% Try catch is also a flow control technique in Matlab that can be useful
% during debugging of codes. But it is highly unrecommended in released
% codes! It can be used for those operations that potentially runs to an
% error but it is hard to check with conventional methods (e.g., one wants
% to write into a file, but it has been already opened by another program. 

try 
    % This is a new part of the code that runs on error and you would like
    % to investigate the reason. 
    matrix1 = ones(randi(3));
    matrix2 = eye(randi(5));
    productMatrix = matrix1 * matrix2;
catch errorMessage
    if strcmp(errorMessage.identifier, 'MATLAB:innerdim')
        % This error can be handled with convenctional method: 
        % if size(A,2) ~= size(A,1)
        disp('The sizes of matrices do not match. The resulting productMatrix is initialized by NaN.');
        productMatrix = NaN;
    else
        % Any other bug that cannot be handled so the program is stopped
        throw(errorMessage);
    end
    
end

% This code should run anyway...
disp('The rest of the very important code...');