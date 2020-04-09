
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
terminal(A):-terminal_1(A,B).
terminal(A):-my_true_gameOver(A).
terminal_1(A,B):-not_my_true_blackPayoff(A,B),not_my_true_dir(A,B,C).
