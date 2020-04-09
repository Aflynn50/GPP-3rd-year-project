
true.

% learning next_control/2
% clauses: 1
% clauses: 2
next_control(A,B):-not_my_true_control(A,B),next_control_1(A).
next_control_1(A):-my_true_blackPayoff(A,B).
