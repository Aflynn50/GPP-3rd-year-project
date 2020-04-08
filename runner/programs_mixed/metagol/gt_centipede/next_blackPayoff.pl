
true.

% learning next_blackPayoff/2
% clauses: 1
% clauses: 2
% clauses: 3
next_blackPayoff(A,15):-my_true_blackPayoff(A,15).
next_blackPayoff(A,15):-does(A,white,continue).
next_blackPayoff(A,0):-does(A,white,finish).
