% EXPERIMENT 4
% College Timetable Knowledge Base

% -------- Faculty --------

faculty(dr_sharma).
faculty(prof_verma).
faculty(dr_singh).
faculty(prof_patel).

% -------- Subjects --------

subject(ai).
subject(java).
subject(database).
subject(mathematics).

% -------- Classrooms --------

classroom(room101).
classroom(room102).
classroom(room103).
classroom(room104).

% -------- Timetable --------
% timetable(Day, Time, Subject, Faculty, Room)

timetable(monday, 9, ai, dr_sharma, room101).
timetable(monday, 11, java, prof_verma, room102).

timetable(tuesday, 9, database, dr_singh, room103).
timetable(tuesday, 11, mathematics, prof_patel, room104).

timetable(wednesday, 9, java, prof_verma, room102).
timetable(wednesday, 11, ai, dr_sharma, room101).

timetable(thursday, 9, mathematics, prof_patel, room104).
timetable(thursday, 11, database, dr_singh, room103).

% -------- Rules --------

% Find the faculty teaching a subject.
teacher_of(Subject, Faculty) :-
    timetable(_, _, Subject, Faculty, _).

% Find the room of a subject.
room_of(Subject, Room) :-
    timetable(_, _, Subject, _, Room).

% Find the timetable of a subject.
subject_schedule(Subject, Day, Time, Faculty, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).

% Find classes conducted by a faculty member.
faculty_schedule(Faculty, Day, Time, Subject, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).

% Find all classes on a particular day.
day_schedule(Day, Time, Subject, Faculty, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).