
true.

% learning next_q/2
% clauses: 1
% clauses: 2
next_q(A,B):-my_true_q(A,B),not_my_true_p(A,B).
next_q(A,B):-my_true_p(A,B),not_my_true_q(A,B).
