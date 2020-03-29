
next_whiteScore(V0) :- true_rounds(V99), V0 = 4, V99 = 1, int(V0), int(V99).
next_whiteScore(V0) :- true_rounds(V78), V0 = 9, V78 = 3, int(V0), int(V78).
next_whiteScore(V0) :- true_whiteScore(V0), true_blackScore(V0), does(V102, V103), V102 = black, V103 = straight, int(V0), agent(V102), action(V103).
next_whiteScore(V0) :- true_whiteScore(V12), not true_blackScore(V12), V0 = 12, int(V0), int(V12).
next_whiteScore(V0) :- true_whiteScore(V97), V0 = 17, V97 = 12, int(V0), int(V97).
