
true.

% learning next_rounds/2
% clauses: 1
% clauses: 2
next_rounds(A,B):-next_rounds_1(A,B,C),my_true_rounds(A,C).
next_rounds_1(A,B,C):-my_succ(A,C,B).
