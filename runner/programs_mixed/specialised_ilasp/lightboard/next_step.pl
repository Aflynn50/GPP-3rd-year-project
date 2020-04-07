
next_step(V0) :- successor(V1, V0), true_step(V1), int(V0), pos(V1), int(V1).
