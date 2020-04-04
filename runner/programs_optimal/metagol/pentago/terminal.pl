
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-my_succ(A,B,C),terminal_1(A,B,C).
terminal_1(A,B,C):-terminal_2(A,B,C,3).
terminal_2(A,B,C,D):-my_true_cellholds(A,B,C,D,black).
