%% How a programmer works :)
answer = input('Buy a loaf of bread! If there is milk, buy two!\n');

if strcmpi(answer, 'there is')
    disp('I have bought two loafs of bread.');
else
    disp('I have bought a loaf of bread.');
end

%% Other if-else examples
numberOfData = 10;
randomValues = rand(numberOfData, 1);
meanValue = mean(randomValues);
disp(['The average: ', num2str(meanValue), '.']);

if any(randomValues < 0.01)
    disp('There is value less than 0.01!');
end

if any(randomValues > 0.99)
    disp('There is value greater than 0.99!');
else
    disp('There is not value greater than 0.99 :(');
end

if meanValue < 0.45
    disp('The average is less than it is expected.');
elseif meanValue > 0.55
    disp('The average is greater than it is expected.');
else
    disp('The average is around the expected value.');
end