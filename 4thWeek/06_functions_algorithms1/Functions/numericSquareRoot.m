% Ctrl+C: stop running
function sqrtValue = numericSquareRoot(input)
% This function computes numerically the square root of a give number.
% MATLAB built-in: sqrt(input)

TOLERANCE_FACTOR = 1e-9; % tolerance for numerical estimation (constant convention)

isComplex = false;
if input < 0
    input = abs(input);
    isComplex = true;
end

if input > 1
    lower = 1;
    upper = input;
else
    lower = input;
    upper = 1;
end

squaredValue = 1;
% relative tolerance
while abs(input - squaredValue) > input * TOLERANCE_FACTOR
    sqrtValue = (lower + upper) / 2;
    squaredValue = sqrtValue * sqrtValue;
    if squaredValue == input
        break;
    elseif squaredValue < input
        lower = sqrtValue;
    else
        upper = sqrtValue;
    end
end

if isComplex
    sqrtValue = sqrtValue * 1i;
end

end