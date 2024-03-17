% Input generation for mass-spring-damper model
%% Time of simulation
tStart = 0;
tStep  = 0.1;
tStop  = 15;
%% Input data of simulation
% Time data
timeVect = (tStart : tStep : tStop)';
% Force excitation data
inputVect = + (timeVect > 1.0) ...
       - 2 * (timeVect > 6.0) ...
       + (timeVect > 11.0);
%% Plot and save
plot(timeVect, inputVect, 'LineWidth', 1.5);
xlabel('time [s]')
ylabel('input force [N]')
legend('Mass-spring-damper model input')

save('mdsInput.mat', 'timeVect', 'inputVect')
%% Model params 
DAMPER_CONST = 1;
MASS = 1;
SPRING_CONST = 1;
save('modelParams.mat', 'DAMPER_CONST', 'SPRING_CONST', 'MASS');
