
goal(V0, V1) :- true_dir(V23, V24), V0 = black, V1 = 10, V23 = c, V24 = left, agent(V0), int(V1).
goal(V0, V1) :- true_at(V26, V26, V23), V0 = black, V1 = 0, V23 = c, V26 = 1, agent(V0), int(V1).
goal(V0, V1) :- true_at(V25, V26, V27), V1 = 10, V25 = 3, V26 = 1, V27 = x, agent(V0), int(V1).
