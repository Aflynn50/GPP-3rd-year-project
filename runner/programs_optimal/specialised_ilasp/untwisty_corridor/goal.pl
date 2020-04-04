
goal(V0, V1) :- successor(V9, V8), true_step(V9), V1 = 0, agent(V0), score(V1), int(V8), int(V9).
goal(V0, V1) :- true_step(V3), V1 = 100, V3 = 8, agent(V0), score(V1), int(V3).
