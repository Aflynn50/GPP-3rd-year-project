
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-my_true_control(A,B),terminal_1(A,B).
terminal_1(A,sheep):-terminal_2(A,c7,s).
terminal_2(A,B,C):-my_true_cell(A,c5,B,C).
