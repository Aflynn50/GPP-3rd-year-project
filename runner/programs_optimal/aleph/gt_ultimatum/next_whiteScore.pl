next_whiteScore(A,B) :-
   my_true_whiteScore(A,B), my_true_rounds(A,B).
next_whiteScore(A,B) :-
   my_true_whiteScore(A,B), does_offer(A,C,B).
next_whiteScore(4,0).
next_whiteScore(6,10).
next_whiteScore(7,10).
next_whiteScore(8,20).
next_whiteScore(9,20).
next_whiteScore(10,26).
next_whiteScore(11,26).
next_whiteScore(12,26).
next_whiteScore(13,26).
next_whiteScore(14,26).
next_whiteScore(15,26).
next_whiteScore(16,27).
next_whiteScore(17,27).
next_whiteScore(18,34).
next_whiteScore(19,34).
next_whiteScore(20,40).
