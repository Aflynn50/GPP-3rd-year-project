
next_whiteScore(V0) :- true_whiteScore(V0), does(V101, V103), does(V102, V104), V103 = cooperate, V104 = defect, int(V0), agent(V101), agent(V102), action(V103), action(V104).
next_whiteScore(V0) :- succ(V56, V0), succ(V67, V56), succ(V78, V67), true_whiteScore(V78), true_rounds(V67), int(V0), int(V56), int(V67), int(V78).
next_whiteScore(V0) :- true_rounds(V45), V0 = 9, V45 = 6, int(V0), int(V45).
next_whiteScore(V0) :- succ(V12, V0), succ(V23, V12), succ(V34, V23), true_rounds(V34), V0 = 10, int(V0), int(V12), int(V23), int(V34).
