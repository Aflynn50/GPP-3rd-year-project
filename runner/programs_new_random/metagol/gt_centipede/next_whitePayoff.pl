
true.

% learning next_whitePayoff/2
% clauses: 1
% clauses: 2
% clauses: 3
next_whitePayoff(A,0):-my_true_blackPayoff(A,15).
next_whitePayoff(A,0):-does(A,white,continue).
next_whitePayoff(A,5):-does(A,white,finish).
