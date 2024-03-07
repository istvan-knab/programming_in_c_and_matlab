%% Factorial
factorialNumber = 5; % we wanto to computer factorial of this number (constant)

factorialValue = 1; % The initial value of the factorial
for i = 1 : factorialNumber
    factorialValue = factorialValue * i;
end
disp(factorialValue)

%% Checkerboard matrix
nSize = 10; % size of the matrix with hungarian notation
checkerBoardMatrix = zeros(nSize); % allocating the matrix
for i = 1 : nSize
    if mod(i, 2) ~= 0
        for j = 1 : 2 : nSize
            checkerBoardMatrix(i,j) = 1;
        end
    else
        for j = 2 : 2 : nSize
            checkerBoardMatrix(i,j) = 1;
        end
    end
end

%% For cycle with vectors and matrices
% Iterates on columns
for i = [2, 9, 32, 56, 78, 31]
    if mod(i, 2) == 0
        % Do not display even numbers.
        continue;
    end
    disp(i);
    
end
% Iterates on columns vectors of matrix
for i = eye(3)
    disp('-----');
    disp(i);
end