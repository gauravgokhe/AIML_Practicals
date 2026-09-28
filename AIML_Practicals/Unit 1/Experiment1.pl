% EXPERIMENT 1
% Student-Course Knowledge Base

% -------- Facts --------

% Student facts
student(gaurav).
student(rahul).
student(priya).
student(aman).

% Course facts
course(ai).
course(machine_learning).
course(java).
course(database).

% Enrollment facts
enrolled(gaurav, ai).
enrolled(gaurav, java).
enrolled(rahul, machine_learning).
enrolled(rahul, database).
enrolled(priya, ai).
enrolled(aman, java).

% -------- Rules --------

% A student is taking a course if enrolled.
taking_course(Student, Course) :-
    enrolled(Student, Course).

% Find whether two students take the same course.
same_course(Student1, Student2) :-
    enrolled(Student1, Course),
    enrolled(Student2, Course),
    Student1 \= Student2.

% Find all courses of a student.
student_course(Student, Course) :-
    student(Student),
    course(Course),
    enrolled(Student, Course).