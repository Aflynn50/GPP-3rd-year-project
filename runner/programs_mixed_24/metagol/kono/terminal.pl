
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-terminal_1(A,B).
terminal_1(A,B):-my_true_score(A,B,100).
terminal_1(A,B):-my_true_step(A,B),not_my_succ(A,B,C).
