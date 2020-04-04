next_has_arson(17,blue).
next_has_arson(17,red).
next_has_arson(A,B) :-
   my_true_control(A,B), my_true_has_arson(A,B).
next_has_arson(33,blue).
next_has_arson(33,red).
next_has_arson(49,blue).
next_has_arson(49,red).
next_has_arson(65,blue).
next_has_arson(65,red).
next_has_arson(71,blue).
next_has_arson(71,red).
next_has_arson(A,B) :-
   does(A,B,C), my_true_has_arson(A,B).
