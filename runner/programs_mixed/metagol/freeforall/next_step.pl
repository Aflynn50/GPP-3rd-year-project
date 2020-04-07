
true.

% learning next_step/2
% clauses: 1
% clauses: 2
next_step(A,B):-next_step_1(A,B,C),my_true_step(A,C).
next_step_1(A,B,C):-stepcount(A,C,B).
