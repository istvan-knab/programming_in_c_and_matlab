%% Data definition
timeVect = 0 : 0.05 * pi : 2 * pi;
sinus = sin(timeVect);
sinus2 = 2 * sin(0.5 * timeVect + pi / 8);
sinus3 = 0.5 * sin(2 * timeVect - pi / 6);
%% Setup the figure and axis
% Considering print
widthOfFig = 8; % cm
heightOfFig = 5; % cm
fontSize = 8;
% Creating the figure
fig = figure('Name', 'Sin functions', 'Color', 'White', 'Unit', 'Centimeters', ...
    'Position', [0, 0, widthOfFig, heightOfFig], 'PaperPosition', [0, 0, widthOfFig, heightOfFig], ...
    'PaperSize', [widthOfFig, heightOfFig]);
% Creating axis (coordinate system)
ax = axes(fig, 'FontSize', fontSize, 'FontWeight', 'Normal', 'TitleFontWeight', 'Normal', ...
    'TitleFontSizeMultiplier', 1.0, 'LabelFontSizeMultiplier', 1.0, 'Box', 'on');
%% 2D line plots
hold(ax, 'on') % holding the axis to draw more the one line
% Linestyle settings 
plot(ax, timeVect, sinus, 'b-o');
plot(ax, timeVect, sinus2, 'g:d');
% Detailed settings of plot
plot(ax, timeVect, sinus3, 'Color', [20, 100, 200] / 255, 'LineStyle', '-.', 'LineWidth', 2, ...
    'Marker', 's', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
grid(ax, 'on'); % drawing grid
% Labels and title
title(ax, 'Sinus waves');
xlabel(ax, 't [s]');
ylabel(ax, 'A [m]');
legend(ax, {'sin1', 'sin2', 'sin3'}, 'FontSize', fontSize, 'Orientation', 'Vertical', ...
    'Location', 'Best');
% Setting of axis values and ticks
ax.XTick = [0, pi/2, pi, 3*pi/2, 2*pi];
ax.XTickLabel = {'0', '\pi/2', '\pi', '3\pi/2', '2\pi'};
%% Save
% Vector graphics
%      file name    format   rendering
print('abra.emf', '-dmeta', '-painters'); % Word
print('abra.pdf', '-dpdf', '-painters');  % LaTeX
% Pixel graphics
print('abra.png', '-dpng', '-opengl');

%% Creating subplots
axis1 = subplot(2, 1, 1);
plot(axis1, timeVect, sinus, 'b-o');
axis2 = subplot(2, 1, 2);
plot(axis2, timeVect, sinus2, 'g:d');
title(axis1, 'Sinus waves');
xlabel(axis2, 'angle [rad]');
ylabel(axis2, 'A [m]');
ylabel(axis1, 'A [m]');