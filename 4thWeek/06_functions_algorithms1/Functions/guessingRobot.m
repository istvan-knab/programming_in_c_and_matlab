function tip = guessingRobot
% This function is a robot that guesses the number the user was thinking 
% by interacting with the user
disp('Think of a number between 1 and 100!');
disp('Press a button to start!');
pause(); % waits until the user presses any key

% initialize number of tips and interval boundaries
numOfTips = 0;
lowerBound = 1;
upperBound = 101;

% loop until the robot guesses the right number
while true
    numOfTips = numOfTips + 1;
    tip = floor((lowerBound + upperBound) / 2);
    disp(['My tip is ', num2str(tip), '.']);
    answer = input('Please tell me whether your number is lower or greater than my tip.\n');
    if strcmpi(answer, 'lower')
        upperBound = tip;
    elseif strcmpi(answer, 'greater')
        lowerBound = tip;
    else % right guess
        break
    end
end
disp(['I guessed ', num2str(numOfTips), ...
    ' times to find out your number.']);
end