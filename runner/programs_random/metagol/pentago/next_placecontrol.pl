
true.

% learning next_placecontrol/2
% clauses: 1
% clauses: 2
next_placecontrol(A,B):-not_my_true_rotatecontrol(A,B),next_placecontrol_1(A).
next_placecontrol_1(A):-my_true_rotatecontrol(A,B).
