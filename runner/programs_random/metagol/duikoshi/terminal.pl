
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-terminal_1(A,B).
terminal_1(A,B):-terminal_2(A,B,4).
terminal_2(A,B,C):-my_true_cell(A,4,B,C).
