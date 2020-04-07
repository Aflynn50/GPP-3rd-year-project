
true.

% learning next_gameOver/1
% clauses: 1
% clauses: 2
next_gameOver(A):-next_gameOver_1(A,B).
next_gameOver_1(A,B):-does(A,B,finish).
