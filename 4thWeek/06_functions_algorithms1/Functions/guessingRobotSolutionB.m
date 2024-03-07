function tip = guessingRobotSolutionB
% This function is a robot that guesses the number the user was thinking 
% by interacting with the user
disp('Think of a number between 1 and 100!');
disp('Press a button to start!');
pause(); % waits until the user presses any key

% initialize number of tips and interval boundaries
numOfTips = 0;
lowerBound = 0;
upperBound = 101;

% initialize an invalid user answer to make sure that we step into the
% while loop
answer = '';
% loop until the robot guesses the right number
while ~strcmpi(answer, 'equals')
    numOfTips = numOfTips + 1;
    tip = floor((lowerBound + upperBound) / 2);
    fprintf(1, 'My tip is %d.\n', tip);
    answer = input('Please tell me, whether your number is lower or greather than my tip? ');
    switch answer
        case 'lower'
            upperBound = tip;
        case 'greater'
            lowerBound = tip;
        case 'equals'
    end
end
fprintf(1, 'I guessed %d times to find out your number.\n', numOfTips);
end