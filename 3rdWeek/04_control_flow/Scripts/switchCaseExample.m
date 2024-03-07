number = input('Add a number!\n');
signOfNumber = sign(number);

switch signOfNumber
    case -1
        disp('The given number is negative.');
    case 1
        disp('The given number is positive.');
    otherwise
        disp('The given number is zero.');
end