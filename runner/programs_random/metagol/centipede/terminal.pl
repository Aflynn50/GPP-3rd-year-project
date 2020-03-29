
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-terminal_1(A,B).
terminal_1(A,B):-terminal_2(A,B,C),not_has_pred(A,C).
terminal_2(A,B,C):-my_true_at(A,B,C,c).
