
next_whiteScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 4, int(V0), int(V100).
next_whiteScore(V0) :- true_rounds(V78), V0 = 7, V78 = 3, int(V0), int(V78).
next_whiteScore(V0) :- succ(V12, V13), succ(V98, V0), succ(V13, V98), true_blackScore(V12), not true_whiteScore(V12), int(V0), int(V12), int(V13), int(V98).
next_whiteScore(V0) :- true_whiteScore(V97), V0 = 16, V97 = 12, int(V0), int(V97).
next_whiteScore(V0) :- does(V101, V103), not true_rounds(V0), V0 = 4, V101 = white, V103 = straight, int(V0), agent(V101), action(V103).
