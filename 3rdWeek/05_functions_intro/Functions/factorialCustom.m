% MATLAB built in: factorial(number)
function factorialValue = factorialCustom(number)
% This function is intended to compute the factorial of the number given as
% the input argument.

% Uninterpreted value handling
if number < 0 || ~isIntegerValue(number)
    factorialValue = NaN;
    warning('The factorial is interpreted only on non-negative integers.');
    return
end

factorialValue = 1;
for i = 2 : number
    factorialValue = factorialValue * i;
end

end