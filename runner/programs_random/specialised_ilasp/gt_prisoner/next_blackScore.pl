
next_blackScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 3, int(V0), int(V100).
next_blackScore(V0) :- succ(V34, V0), succ(V45, V34), succ(V56, V45), true_whiteScore(V56), V0 = 8, int(V0), int(V34), int(V45), int(V56).
next_blackScore(V0) :- succ(V67, V0), true_whiteScore(V67), does(V101, V103), V101 = white, V103 = defect, int(V0), int(V67), agent(V101), action(V103).
next_blackScore(V0) :- succ(V12, V13), succ(V24, V12), succ(V13, V0), true_whiteScore(V24), V0 = 11, int(V0), int(V12), int(V13), int(V24).
next_blackScore(V0) :- true_whiteScore(V98), V0 = 16, V98 = 11, int(V0), int(V98).
next_blackScore(V0) :- succ(V0, V87), succ(V13, V98), true_whiteScore(V98), V13 = 10, V87 = 22, int(V0), int(V13), int(V87), int(V98).
