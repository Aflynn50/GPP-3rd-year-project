
true.

% learning next_whiteScore/2
% clauses: 1
% clauses: 2
next_whiteScore(A,B):-next_whiteScore_1(A,B,C),my_true_blackScore(A,C).
next_whiteScore_1(A,B,C):-my_succ(A,C,B).
