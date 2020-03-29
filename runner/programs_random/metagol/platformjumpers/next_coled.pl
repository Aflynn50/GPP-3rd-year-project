
true.

% learning next_coled/2
% clauses: 1
% clauses: 2
% clauses: 3
next_coled(A,B):-next_coled_1(A,B,C).
next_coled(A,B):-my_true_coled(A,B).
next_coled_1(A,B,C):-does_col(A,C,B).
