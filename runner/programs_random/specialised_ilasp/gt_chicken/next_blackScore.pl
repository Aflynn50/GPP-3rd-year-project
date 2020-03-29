
next_blackScore(V0) :- true_rounds(V99), V0 = 4, V99 = 1, int(V0), int(V99).
next_blackScore(V0) :- true_rounds(V78), V0 = 7, V78 = 3, int(V0), int(V78).
next_blackScore(V0) :- true_whiteScore(V0), true_blackScore(V0), does(V102, V103), V102 = black, V103 = straight, int(V0), agent(V102), action(V103).
next_blackScore(V0) :- succ(V12, V13), succ(V98, V0), succ(V13, V98), true_whiteScore(V12), not true_blackScore(V12), int(V0), int(V12), int(V13), int(V98).
next_blackScore(V0) :- succ(V95, V0), succ(V96, V95), succ(V97, V96), true_whiteScore(V97), V0 = 15, int(V0), int(V95), int(V96), int(V97).
