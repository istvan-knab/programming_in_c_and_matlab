function fibonacciValue = fibonacciRecursive(number)
% This function obtains the n-th element of the Fibonacci series by
% recursive function calling
if number < 0
    fibonacciValue = NaN;
    warning('Negative index is not interpreted.');
    return
elseif (number == 0) || (number == 1)
    % The first two elements of series
    fibonacciValue = number;
else
    fibonacciValue = fibonacciCustom(number - 1) + ...
        fibonacciCustom(number - 2);
end
end