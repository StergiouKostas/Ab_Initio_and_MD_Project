% Data
T_initial = [0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0];                    % Initial temperatures
Mean_Pressure = [-3.720385604, -1.63407693, 0.3874020496, 3.323294898, ...
                 5.079244478, 6.712649256, 8.250409912, 9.774913108];    % Mean pressures

% Linear regression (Least squares fit)
p = polyfit(T_initial, Mean_Pressure, 1); % Fit a first-degree polynomial (line)
fit_line = polyval(p, T_initial);         % Calculate fitted values

% Calculating R^2 (Coefficient of determination)
y_mean = mean(Mean_Pressure);
SS_total = sum((Mean_Pressure - y_mean).^2);
SS_residual = sum((Mean_Pressure - fit_line).^2);
R_squared = 1 - (SS_residual / SS_total);

% Plotting
figure;
hold on;

% Plot data points with filled circles and connecting line
plot(T_initial, Mean_Pressure, 'bo-', 'MarkerSize', 10, 'LineWidth', 2, ...
    'MarkerFaceColor', 'b');

% Plot the least squares fit line
plot(T_initial, fit_line, 'r--', 'LineWidth', 1);

% Display R^2 value in the bottom right corner
x_lim = xlim; % Get x-axis limits
y_lim = ylim; % Get y-axis limits
text(x_lim(2)*0.825, y_lim(1)*0, sprintf('R^2 = %.4f', R_squared), ...
    'FontSize', 14, 'Color', 'w', 'FontWeight', 'bold', ...  % White text color
    'HorizontalAlignment', 'right', ...
    'BackgroundColor', [0.1, 0.1, 0.1], ...  % Dark background
    'EdgeColor', [0.5, 0.5, 0.5], ...        % Grid color for the border
    'LineWidth', 1.5, ...                    % Thicker border
    'Margin', 2);                            % Padding around the text

% Labels and title
xlabel('Initial Temperature (T_{initial})', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('Mean Pressure (P)', 'FontSize', 14, 'FontWeight', 'bold');
title('Mean Pressure vs. Initial Temperature', 'FontSize', 16, 'FontWeight', 'bold');
legend('Data Points', 'Least Squares Fit', 'Location', 'northwest', 'FontSize', 12);
grid on;

% Adjust figure appearance
set(gca, 'FontSize', 12, 'FontWeight', 'bold', 'Color', [0.1, 0.1, 0.1]);
set(gcf, 'Color', [0.1, 0.1, 0.1]);

% Grid and axis lines
ax = gca;
ax.GridColor = [0.5, 0.5, 0.5];
ax.GridAlpha = 0.7; 
ax.LineWidth = 1.5; 
hold off;