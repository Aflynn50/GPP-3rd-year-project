
true.

% learning next_q/2
% clauses: 1
% clauses: 2
next_q(A,B):-next_q_1(A,B,C),my_true_step(A,C).
next_q_1(A,5,B):-my_true_p(A,B).
