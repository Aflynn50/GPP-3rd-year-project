
next_whiteScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 3, int(V0), int(V100).
next_whiteScore(V0) :- succ(V78, V0), succ(V89, V78), succ(V99, V89), true_rounds(V99), V0 = 4, int(V0), int(V78), int(V89), int(V99).
next_whiteScore(V0) :- succ(V34, V0), succ(V45, V34), succ(V56, V45), true_whiteScore(V56), V0 = 8, int(V0), int(V34), int(V45), int(V56).
next_whiteScore(V0) :- succ(V67, V0), true_whiteScore(V67), V0 = 5, int(V0), int(V67).
next_whiteScore(V0) :- succ(V12, V13), succ(V24, V12), succ(V13, V0), true_whiteScore(V24), V0 = 11, int(V0), int(V12), int(V13), int(V24).
next_whiteScore(V0) :- true_rounds(V24), V0 = 16, V24 = 8, int(V0), int(V24).
next_whiteScore(V0) :- true_whiteScore(V0), not true_blackScore(V83), V0 = 11, V83 = 26, int(V0), int(V83).
