
true.

% learning next_moveCount/2
% clauses: 1
% clauses: 2
% clauses: 3
next_moveCount(A,B):-next_moveCount_1(A,B,C).
next_moveCount_1(A,B,C):-next_moveCount_2(A,C,B).
next_moveCount_2(A,B,C):-my_true_cell(A,B,C,knight).
