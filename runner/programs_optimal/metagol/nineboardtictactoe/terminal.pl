
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
terminal(A):-my_true_currentboard(A,B,C),terminal_1(A,B,C).
terminal_1(A,B,C):-terminal_2(A,B,C,2).
terminal_2(A,B,C,D):-terminal_3(A,B,C,D,3).
terminal_3(A,B,C,D,E):-my_true_mark(A,B,C,D,E,o).
