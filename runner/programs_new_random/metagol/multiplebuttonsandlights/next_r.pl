
true.

% learning next_r/2
% clauses: 1
% clauses: 2
% clauses: 3
next_r(A,B):-my_true_r(A,B).
next_r(A,B):-my_true_q(A,B),next_r_1(A,B).
next_r_1(A,B):-does_c(A,robot,B).
