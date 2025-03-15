% Reading data from excel files
files_600 = {...
    'data_Ni_Temp600_Timestep_0_1fs.xlsx', ...
    'data_Ni_Temp600_Timestep_0_5fs.xlsx', ...
    'data_Ni_Temp600_Timestep_2fs.xlsx', ...
    'data_Ni_Temp600_Timestep_3fs.xlsx'};

timesteps_600 = [0.1, 0.5, 2, 3]; % In fs

files_1200 = {...
    'data_Ni_Temp1200_Timestep_0_5fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_2fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_3fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_4fs.xlsx'};

timesteps_1200 = [0.5, 2, 3, 4]; % In fs

% Subplots for data Temp600
figure;
tiledlayout(2,2);
title('Temperature 600K');

for i = 1:length(files_600)
    % Reading data
    data = readtable(files_600{i});
    steps = data.Step;
    temperature = data.Temp;
    
    % Subplot
    nexttile;
    plot(steps, temperature, 'b');
    title(sprintf('Timestep %.1f fs', timesteps_600(i)));
    xlabel('Step');
    ylabel('Temperature (K)');
    legend('Temperature');
end

% Subplots for data Temp1200
figure;
tiledlayout(2,2);
title('Temperature 1200K');

for i = 1:length(files_1200)
    % Reading data
    data = readtable(files_1200{i});
    steps = data.Step;
    temperature = data.Temp;
    
    % Subplot
    nexttile;
    plot(steps, temperature, 'r');
    title(sprintf('Timestep %.1f fs', timesteps_1200(i)));
    xlabel('Step');
    ylabel('Temperature (K)');
    legend('Temperature');
end
