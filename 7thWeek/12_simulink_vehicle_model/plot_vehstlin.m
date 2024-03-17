% Plot the simulated motion of a single track linear vehicle model
figure('Name', 'sim_vehstlin',...
       'Unit', 'Centimeters',...
       'Position', [0, 0, 14, 10],...
       'Color', [1, 1, 1]);
% Plot input and output.
subplot(2,1,1);
plot(t_in, u_in, t_out, y_out(:,1), t_out, y_out(:,3));
title('Step response of single track  linear vehicle model', 'Interpreter', 'Latex');
legend({'$\delta_f$','$\dot{y}$','$\dot{\psi}$'}, 'Interpreter', 'Latex', 'FontSize', 10);
xlabel('$t$ [s]', 'Interpreter', 'Latex');
xlim([t_start, t_stop]);
ylabel('$\delta_f$ [rad], $\dot{y}$ [m/s], $\dot{\psi}$ [rad/s]', 'Interpreter', 'Latex');
set(gca, 'TickLabelInterpreter', 'Latex', 'FontSize', 10);
grid on;
box on;
subplot(2,1,2);
plot(y_out(:,5), y_out(:,6));
title('Path of single track  linear vehicle model', 'Interpreter', 'Latex');
xlabel('$x_G$ [m]', 'Interpreter', 'Latex');
ylabel('$y_G$ [m]', 'Interpreter', 'Latex');
set(gca, 'TickLabelInterpreter', 'Latex', 'FontSize', 10);
grid on;
box on;