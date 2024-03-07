% Pause is a flow control function in Matlab that can be useful in data
% visualization. But it is highly unrecommended in released code!
% Furthermore, in most cases it is easier and faster to create video from
% the visualization instead of using pause.

for i = 1 : 10
    disp(i);
    % The code waits as many seconds as it is given by the argument
    pause(1.0);
    if mod(i, 6) == 0 % if i can be divided by 6
        % It waits until user response if the argument is empty
        pause();
    end
end