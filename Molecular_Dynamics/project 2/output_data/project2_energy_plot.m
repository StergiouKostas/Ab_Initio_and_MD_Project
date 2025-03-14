% Read data from Excel files
files_600 = {...
    'data_Ni_Temp600_Timestep_0_1fs.xlsx', ...
    'data_Ni_Temp600_Timestep_0_5fs.xlsx', ...
    'data_Ni_Temp600_Timestep_2fs.xlsx', ...
    'data_Ni_Temp600_Timestep_3fs.xlsx'};

timesteps_600 = [0.1, 0.5, 2, 3];

files_1200 = {...
    'data_Ni_Temp1200_Timestep_0_5fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_2fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_3fs.xlsx', ...
    'data_Ni_Temp1200_Timestep_4fs.xlsx'};

timesteps_1200 = [0.5, 2, 3, 4];

% Plots for 600K
figure;
tiledlayout(2,2);
sgtitle('Energy Analysis at 600K');

for i = 1:length(files_600)
    data = readtable(files_600{i});
    steps = data.Step;
    kinetic_energy = data{:,3};
    potential_energy = data{:,4};
    total_energy = data{:,5};
    
    nexttile;
    plot(steps, kinetic_energy, 'b', 'DisplayName', 'Kinetic Energy'); hold on;
    plot(steps, potential_energy, 'r', 'DisplayName', 'Potential Energy');
    plot(steps, total_energy, 'g', 'DisplayName', 'Total Energy'); hold off;
    title(sprintf('Timestep %.1f fs', timesteps_600(i)));
    xlabel('Step');
    ylabel('Energy');
    legend;
end

% Plots for 1200K
figure;
tiledlayout(2,2);
sgtitle('Energy Analysis at 1200K');

for i = 1:length(files_1200)
    data = readtable(files_1200{i});
    steps = data.Step;
    kinetic_energy = data{:,3};
    potential_energy = data{:,4};
    total_energy = data{:,5};
    
    nexttile;
    plot(steps, kinetic_energy, 'b', 'DisplayName', 'Kinetic Energy'); hold on;
    plot(steps, potential_energy, 'r', 'DisplayName', 'Potential Energy');
    plot(steps, total_energy, 'g', 'DisplayName', 'Total Energy'); hold off;
    title(sprintf('Timestep %.1f fs', timesteps_1200(i)));
    xlabel('Step');
    ylabel('Energy');
    legend;
end
