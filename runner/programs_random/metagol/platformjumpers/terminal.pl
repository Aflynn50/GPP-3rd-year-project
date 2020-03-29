
true.

% learning terminal/1
% clauses: 1
% clauses: 2
terminal(A):-goal_row(A,B,C),terminal_1(A,B,C).
terminal_1(A,B,C):-my_true_jumper(A,B,C,8).
