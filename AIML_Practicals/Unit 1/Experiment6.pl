% EXPERIMENT 6
% Travel Route Recommendation System

% -------- Direct Connections --------

connected(raipur, durg).
connected(durg, bhilai).
connected(bhilai, nagpur).
connected(raipur, bilaspur).
connected(bilaspur, korba).
connected(korba, nagpur).

% Connections are bidirectional.

road(X, Y) :-
    connected(X, Y).

road(X, Y) :-
    connected(Y, X).

% -------- Direct Route --------

direct_route(X, Y) :-
    road(X, Y).

% -------- Route Finding --------

route(Start, Destination, Route) :-
    travel(Start, Destination, [Start], ReverseRoute),
    reverse(ReverseRoute, Route).

% Destination reached.
travel(Destination, Destination, Visited, Visited).

% Find a connected city that has not been visited.
travel(Current, Destination, Visited, Route) :-
    road(Current, Next),
    \+ member(Next, Visited),
    travel(Next, Destination, [Next|Visited], Route).