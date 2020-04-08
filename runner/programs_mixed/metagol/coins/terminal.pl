
true.

% learning terminal/1
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
terminal(A):-my_true_step(A,B),terminal_1(A,B).
terminal_1(A,3):-my_true_cell(A,7,onecoin).
terminal_1(A,B):-my_succ(A,B,6).
terminal_1(A,4):-my_true_cell(A,2,onecoin).
