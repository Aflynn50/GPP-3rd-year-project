
next_blackScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 4, int(V0), int(V100).
next_blackScore(V0) :- true_rounds(V78), V0 = 9, V78 = 3, int(V0), int(V78).
next_blackScore(V0) :- true_whiteScore(V35), not true_blackScore(V35), V0 = 12, int(V0), int(V35).
next_blackScore(V0) :- true_whiteScore(V97), V0 = 16, V97 = 12, int(V0), int(V97).
next_blackScore(V0) :- true_whiteScore(V0), true_blackScore(V0), does(V101, V103), V101 = white, V103 = straight, int(V0), agent(V101), action(V103).
next_blackScore(V0) :- true_rounds(V13), V0 = 21, V13 = 10, int(V0), int(V13).
