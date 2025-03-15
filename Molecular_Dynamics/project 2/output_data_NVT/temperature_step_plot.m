clc; clear; close all;

% Data names
fileNames = {'data_Ni_50dt.xlsx', 'data_Ni_100dt.xlsx', 'data_Ni_200dt.xlsx', 'data_Ni_500dt.xlsx'};
TdampValues = {'50dt', '100dt', '200dt', '500dt'}; % Tdamp values for title
colors = {'b', 'r', 'g', 'm'};

figure;
for i = 1:4
    % Reading data
    data = readmatrix(fileNames{i});
    
    step = data(:,1);
    temperature = data(:,2);
    
    % Subplots
    subplot(2,2,i);
    plot(step, temperature, colors{i}, 'LineWidth', 1.5);
    xlabel('Step');
    ylabel('Temperature (K)');
    title(['Temperature vs Step for Tdamp = ', TdampValues{i}]);
    grid on;
end

% General title
sgtitle('Temperature Evolution for Different Tdamp Values');
