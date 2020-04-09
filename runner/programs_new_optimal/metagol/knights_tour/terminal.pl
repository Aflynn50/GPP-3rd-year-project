
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-terminal_1(A,B,C),terminal_2(A,B,C).
terminal_1(A,B,C):-my_true_cell(A,B,C,hole).
terminal_2(A,B,C):-my_true_cell(A,B,C,knight).
