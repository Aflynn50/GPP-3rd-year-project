
next_blackScore(V0) :- true_whiteScore(V100), true_rounds(V100), V0 = 4, int(V0), int(V100).
next_blackScore(V0) :- true_rounds(V89), V0 = 8, V89 = 2, int(V0), int(V89).
next_blackScore(V0) :- true_whiteScore(V0), does(V102, V103), V102 = black, V103 = straight, int(V0), agent(V102), action(V103).
next_blackScore(V0) :- true_rounds(V68), V0 = 11, V68 = 4, int(V0), int(V68).
next_blackScore(V0) :- succ(V96, V0), succ(V97, V96), succ(V98, V97), true_blackScore(V98), not true_whiteScore(V98), int(V0), int(V96), int(V97), int(V98).
