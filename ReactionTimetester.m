%reaction time project
% Ask user how many times they want to try the game
num_trials = input('How many times do you want to try this game?');
%initializing time period for each trial
reaction_times = zeros(1, num_trials) ;

%iterating through the trials of user
for i= 1:num_trials
    %introduces random delay before prompting user
    pause_time= randi([2,5]);
    %write data to text file
    fprintf('Get ready for trial %d...\n', i);
    %implement pause time to get user ready sing the pause function
    pause(pause_time);
    fprintf('Click on any key RIGHT NOW!');
    tic; %starts timer once user presses any key
    pause; %pauses program for user to enter input
    reaction_times(i)= toc; %stops timer at each iteration
    fprintf('Trial %d: Your reaction time was %.3f seconds\n', i, reaction_times(i)); 
end

%calculates average reaction time
avg_time = mean(reaction_times);
fprintf('Average Reaction Time: %.3f seconds\n', avg_time);

%Let's observe reaction times (5 iterations) of user
figure; %ensures plot appears in a separate window
plot(1:num_trials, reaction_times, 'b-o');
xlabel('Number of trial');
ylabel('Reaction time in seconds');

title('Reaction Time Observation');
grid on;

 