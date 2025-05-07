% Daily Temperature Tracker and Visualizer

% Sample data: You can replace this with input() or file reading later
temp_list = [29, 31, 30, 28, 33, 35, 27]; % Example: a week's temperatures

% Generate x-axis (days)
days = 1:length(temp_list);

% Find max and min temperatures
[maxTemp, max_idx] = max(temp_list);
[minTemp, min_idx] = min(temp_list);
avgTemp = mean(temp_list);

% Plot the temperature line graph
figure;
plot(days, temp_list, '--', 'LineWidth', 2);
hold on; %to allow plotting of suceeding features

% Highlight the hottest day
plot(days(max_idx), maxTemp, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
text(days(max_idx), maxTemp + 0.5, 'Hottest Day', 'Color', 'r');

% Highlight the coldest day
plot(days(minIdx), minTemp, 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
text(days(minIdx), minTemp - 1, 'Coldest Day', 'Color', 'b');

% Plot the average line
yline(avgTemp, '-=', ['Average Temp: ' num2str(avgTemp, '%.1f') '°C']);

% Add labels and title
xlabel('Day');
ylabel('Temperature (°C)');
title('Daily Temperature Tracker');
grid on;
legend('Temp per Day', 'Hottest', 'Coldest', 'Average', 'Location', 'best');

hold off; %ends plot   