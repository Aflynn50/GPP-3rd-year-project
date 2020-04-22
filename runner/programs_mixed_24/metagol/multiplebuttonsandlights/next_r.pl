
true.

% learning next_r/2
% clauses: 1
% clauses: 2
next_r(A,B):-my_true_r(A,B).
next_r(A,B):-my_true_p(A,B),my_true_q(A,B).
