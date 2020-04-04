
next_blackScore(V0) :- true_rounds(V89), V0 = 7, V89 = 2, int(V0), int(V89).
next_blackScore(V0) :- does(V101, V103), does(V102, V103), V0 = 4, V101 = white, V102 = black, int(V0), agent(V101), agent(V102), action(V103).
next_blackScore(V0) :- succ(V12, V0), succ(V23, V12), succ(V34, V23), true_blackScore(V34), not true_whiteScore(V34), int(V0), int(V12), int(V23), int(V34).
