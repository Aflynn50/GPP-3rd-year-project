
goal(V0, V1) :- successor(V8, V7), true_step(V8), V1 = 0, agent(V0), int(V1), index(V7), index(V8).
goal(V0, V1) :- true_step(V3), V1 = 100, V3 = 7, agent(V0), int(V1), index(V3).
