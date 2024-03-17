function factorialMatrix = constructFactorialMatrix(nSize)

%% Solution A
% factorialMatrix = diag(factorial(1 : nSize));

%% Solution B
factorialMatrix = zeros(nSize, nSize); % initialize matrix with zeros

for i = 1 : nSize
    factorialMatrix(i, i) = factorial(i);
end

end