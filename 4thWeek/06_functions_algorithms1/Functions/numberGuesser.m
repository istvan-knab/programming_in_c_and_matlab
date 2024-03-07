function numberGuesser()
% This function is intended to think of a random integer number between 
% 1 and 100 and takes a user input until the user guesses the right number. 
% The function displays to the command window whether the guessed number 
% is greater or lower than the number of what the computer thought.

thoughtNumber = randi(100);

numberOfTips = 0;
currentTip = -1;

while currentTip ~= thoughtNumber
    currentTip = input('Of which number have I thought?\n');
    numberOfTips = numberOfTips + 1;
    if thoughtNumber < currentTip
        disp('My number is lower.\n');
    elseif thoughtNumber > currentTip
        disp('My number is greater.\n');
    else
        disp('Congratulations, you have guessed the right number!');
        disp(['You needed ', num2str(numberOfTips), ' tips.']);
    end
end

end

