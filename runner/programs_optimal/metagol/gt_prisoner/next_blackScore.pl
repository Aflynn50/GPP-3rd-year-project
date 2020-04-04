
true.

% learning next_blackScore/2
% clauses: 1
% clauses: 2
next_blackScore(A,B):-next_blackScore_1(A,B,C),my_true_blackScore(A,C).
next_blackScore_1(A,B,C):-my_succ(A,C,B).
