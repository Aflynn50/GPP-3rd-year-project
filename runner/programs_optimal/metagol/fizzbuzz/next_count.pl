
true.

% learning next_count/2
% clauses: 1
% clauses: 2
next_count(A,B):-next_count_1(A,B,C),my_true_count(A,C).
next_count_1(A,B,C):-my_succ(A,C,B).
