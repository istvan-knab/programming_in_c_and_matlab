%% Van der Pol equation
vanDerPolFcnHandle = @(t, X, mu) vanDerPolEquation(t, X, mu);
vanDerPol100FcnHandle = @(t, X) vanDerPolFcnHandle(t, X, 100);

%% Initial values
timeSpan = [0, 300];
y0 = [2, 0];

%% Solution
tic;
[timeVect1, XMat1] = ode45(vanDerPol100FcnHandle, timeSpan, y0);
fprintf(1, 'The solution performed by ode45 lasted %gs in %d steps.\n', ...
    toc, length(timeVect1));

tic; 
[timeVect2, XMat2] = ode23s(vanDerPol100FcnHandle, timeSpan, y0);
fprintf(1, 'The solution performed by ode23s lasted %gs in %d steps.\n', ...
    toc, length(timeVect2));

%% Visualization
fig = figure('Color', 'white');

% ODE45
ax1 = axes(fig);
subplot(2, 2, 1, ax1);
plot(ax1, timeVect1, XMat1(:, 1), 'r-o');
xlabel(ax1, 'x');
ylabel(ax1, 'Y1(x)');
grid(ax1, 'on');
title('ode45');

ax2 = axes(fig);
subplot(2, 2, 3, ax2);
plot(ax2, timeVect1, XMat1(:, 2), 'r-o');
xlabel(ax2, 'x');
ylabel(ax2, 'Y2(x)');
grid(ax2, 'on');
title('ode45');

% ODE23S
ax3 = axes(fig);
subplot(2, 2, 2, ax3);
plot(ax3, timeVect2, XMat2(:, 1), 'r-o');
xlabel(ax3, 'x');
ylabel(ax3, 'Y1(x)');
grid(ax3, 'on');
title('ode23s');

ax4 = axes(fig);
subplot(2, 2, 4, ax4);
plot(ax4, timeVect2, XMat2(:, 2), 'r-o');
xlabel(ax4, 'x');
ylabel(ax4, 'Y2(x)');
grid(ax4, 'on');
title('ode23s');
