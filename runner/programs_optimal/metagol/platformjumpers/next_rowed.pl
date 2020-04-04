
true.

% learning next_rowed/2
% clauses: 1
% clauses: 2
% clauses: 3
next_rowed(A,B):-next_rowed_1(A,B,C).
next_rowed(A,B):-my_true_rowed(A,B).
next_rowed_1(A,B,C):-does_row(A,C,B).
