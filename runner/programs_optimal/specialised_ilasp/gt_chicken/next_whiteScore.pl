
next_whiteScore(V0) :- true_rounds(V89), V0 = 9, V89 = 2, int(V0), int(V89).
next_whiteScore(V0) :- does(V101, V103), does(V102, V103), V0 = 4, V101 = white, V102 = black, int(V0), agent(V101), agent(V102), action(V103).
next_whiteScore(V0) :- true_whiteScore(V12), not true_blackScore(V12), V0 = 14, int(V0), int(V12).
next_whiteScore(V0) :- true_whiteScore(V95), V0 = 19, V95 = 14, int(V0), int(V95).
