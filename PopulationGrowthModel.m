initial_population = input('What is the starting population? '); 
growth_rate_str = input('Enter the growth rate (Press Enter to use default = 0.05): ', 's');

% This block handles default value for growth rate 
if isempty(growth_rate_str)
    growth_rate = 0.05;  % default value
else
    growth_rate = str2double(growth_rate_str);  % convert to numeric
end

years = input('Enter the number of years for which population growth is to be observed: ');

% Initialize vectors
year_data = zeros(1, years);
population_data = zeros(1, years);

population = initial_population;

for y = 1:years %range= 1 to number of years
    year_data(y) = y;
    population_data(y) = population; %indexing
    population = population + (population * growth_rate);
end

% visualization
plot(year_data, population_data, 'b--');
xlabel('Year');
ylabel('Population');
title('Exponential Population Growth');

while y < years
    year_data(y)= y;
    population_data(y) = population;
    population= population+ (population * growth_rate);
end    
