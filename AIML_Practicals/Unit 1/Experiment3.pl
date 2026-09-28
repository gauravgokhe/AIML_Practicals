% EXPERIMENT 3
% List Manipulation

% -------- Append Two Lists --------

my_append([], L, L).

my_append([H|T], L, [H|R]) :-
    my_append(T, L, R).

% -------- Reverse a List --------

my_reverse([], []).

my_reverse([H|T], R) :-
    my_reverse(T, R1),
    my_append(R1, [H], R).

% -------- Member Search --------

my_member(X, [X|_]).

my_member(X, [_|T]) :-
    my_member(X, T).

% -------- List Length --------

my_length([], 0).

my_length([_|T], Length) :-
    my_length(T, L),
    Length is L + 1.