%% Break example

% One wants to get the smallest three-digit number that is divisible by 19.
i = 100;
divider = 19;
while i / 1000 < 1
    if mod(i, divider) == 0
        break
    end
    i = i + 1;
end
number = i;

%% Continue example
% Find the prime number between 1 and 100. Use continue if there is a big 
% bunch of operations that shall be performed if the condition is 
% satisfied. It can help readability of the code.
primeNumbers = [];
for i = 1 : 100
    if ~isprime(i)
        continue
    end
    primeNumbers = [primeNumbers; i]; 
end