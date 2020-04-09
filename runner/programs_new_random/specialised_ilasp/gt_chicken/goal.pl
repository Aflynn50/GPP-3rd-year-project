
goal(V0, V1) :- true_blackScore(V1), V0 = black, agent(V0), int(V1).
goal(V0, V1) :- true_whiteScore(V1), V0 = white, agent(V0), int(V1).
