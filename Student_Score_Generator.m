%This is a student score generator program to demonstrate indexing &
%manipulation
%Where rows represent scores for each student
%and columns represent each subject with scores

%this creates a matrix storing the scores of students
student_scores= [89 23 46 73 100; 45 68 29 84 56; 83 57 39 29 68; 
    58 73 50 69 78; 38 08 46 36 57];
student_scores;

%adjusting the 3rd score of the 4th student
student_scores(4,3) = 60;

%calculating average of the scores for each student
average_student_score= mean(student_scores,2);
average_student_score;
%calculating average of the scores for each subject 
score_average_per_subject= mean(student_scores);

%accessing the scores of the 3rd student[indexing]
Third_student_scores= student_scores(3,:) ;

%adding a new set of subject scores
new_scores= [74; 56; 84; 29; 99];
student_scores= [student_scores new_scores];

%maximum score for each subject
max_score= max(student_scores);