
next_blackScore(V0) :- true_rounds(V100), true_blackScore(V100), V0 = 5, int(V0), int(V100).
next_blackScore(V0) :- true_rounds(V99), V0 = 8, V99 = 1, int(V0), int(V99).
next_blackScore(V0) :- true_rounds(V90), V0 = 13, V90 = 2, int(V0), int(V90).
next_blackScore(V0) :- true_rounds(V79), V0 = 18, V79 = 3, int(V0), int(V79).
next_blackScore(V0) :- succ(V88, V0), succ(V90, V88), succ(V91, V90), true_blackScore(V91), V0 = 21, int(V0), int(V88), int(V90), int(V91).
