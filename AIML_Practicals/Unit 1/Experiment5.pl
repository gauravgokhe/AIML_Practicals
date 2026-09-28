% EXPERIMENT 5
% Student Performance Analysis

% -------- Student Marks --------

marks(gaurav, 92).
marks(rahul, 78).
marks(priya, 65).
marks(aman, 48).
marks(rohit, 35).
marks(neha, 28).

% -------- Performance Rules --------

performance(Student, topper) :-
    marks(Student, Marks),
    Marks >= 75.

performance(Student, average) :-
    marks(Student, Marks),
    Marks >= 40,
    Marks < 75.

performance(Student, fail) :-
    marks(Student, Marks),
    Marks < 40.

% -------- Display Student Result --------

student_result(Student) :-
    marks(Student, Marks),
    performance(Student, Performance),
    write('Student: '),
    write(Student),
    nl,
    write('Marks: '),
    write(Marks),
    nl,
    write('Performance: '),
    write(Performance),
    nl.