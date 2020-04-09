
next_whiteScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 4, int(V0), int(V100).
next_whiteScore(V0) :- true_rounds(V89), V0 = 8, V89 = 2, int(V0), int(V89).
next_whiteScore(V0) :- true_whiteScore(V0), does(V102, V103), V102 = black, V103 = straight, int(V0), agent(V102), action(V103).
next_whiteScore(V0) :- true_rounds(V68), V0 = 13, V68 = 4, int(V0), int(V68).
next_whiteScore(V0) :- true_whiteScore(V96), not true_blackScore(V96), V0 = 18, int(V0), int(V96).
