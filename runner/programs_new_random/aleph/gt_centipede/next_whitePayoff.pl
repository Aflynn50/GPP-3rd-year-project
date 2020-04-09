next_whitePayoff(1,5).
next_whitePayoff(2,0).
next_whitePayoff(3,0).
next_whitePayoff(4,0).
next_whitePayoff(A,B) :-
   my_true_whitePayoff(A,B), my_succ(A,B,A).
next_whitePayoff(6,5).
next_whitePayoff(7,0).
next_whitePayoff(8,0).
next_whitePayoff(9,5).
next_whitePayoff(11,0).
next_whitePayoff(12,15).
next_whitePayoff(13,10).
next_whitePayoff(14,25).
next_whitePayoff(15,25).
