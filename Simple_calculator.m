opr = input('Enter the operation (Addition, Subtraction, Multiplication, Division): ', 's');
num_1 = input('Enter the first number: ');
num_2 = input('Enter the second number: ');

if strcmp(opr, 'Addition')
    result = num_1 + num_2;
    disp(['Result: ', num2str(result)])
    
elseif strcmp(opr, 'Subtraction')
    result = num_1 - num_2;
    disp(['Result: ', num2str(result)])

elseif strcmp(opr, 'Multiplication')
    result = num_1 * num_2;
    disp(['Result: ', num2str(result)])

elseif strcmp(opr, 'Division')
    if num_2 ~= 0
        result = num_1 / num_2;
        disp(['Result: ', num2str(result)])
    else
        disp('Error: You cannot divide by zero.')
    end
else
    disp('Invalid operation entered.')
end