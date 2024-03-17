% MATLAB bult-in: primes(threshold)
function primeNumbers = primesCustom(threshold)
% This function is intended to find all the prime numbers up to a given
% threshold.

if threshold < 2
    primeNumbers = [];
    return
end

% Allocate vector to store prime numbers:
maxNumOfPrimes = floor(threshold / 2);
primeNumbers = nan(1, maxNumOfPrimes);

% The smallest prime is 2.
primeNumbers(1) = 2;
numberOfPrimes = 1;
% Investigating the odd numbers
for currentNumber = 3 : 2 : threshold
    % The biggest possible divider of a number
    biggestDivider = floor(sqrt(currentNumber));
    % Let assume that the current number is prime
    isPrimeNumber = true;
    % I try all the possible dividers
    for iPrime = 1 : numberOfPrimes
        if primeNumbers(iPrime) > biggestDivider
            break;
        end
        % If it is divisible by a previous prime, its not prime.
        if mod(currentNumber, primeNumbers(iPrime)) == 0
            isPrimeNumber = false;
            break;
        end
    end
    if isPrimeNumber
        % save to the prime list
        numberOfPrimes = numberOfPrimes + 1;
        primeNumbers(numberOfPrimes) = currentNumber;
    end
end
% release unused memory
primeNumbers = primeNumbers(1 : numberOfPrimes);
end