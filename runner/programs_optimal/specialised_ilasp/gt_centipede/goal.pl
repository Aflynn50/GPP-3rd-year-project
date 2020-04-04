
goal(V0, V1) :- V0 = black, V1 = 10, agent(V0), int(V1).
goal(V0, V1) :- true_at(V24, V26, V27), V0 = black, V24 = 1, V26 = 8, V27 = o, agent(V0), int(V1).
