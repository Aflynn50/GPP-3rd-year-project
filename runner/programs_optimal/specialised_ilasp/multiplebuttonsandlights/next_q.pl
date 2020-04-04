
next_q(V0) :- successor(V3, V0), successor(V5, V4), true_step(V4), not true_step(V3), V0 = 5, index(V0), index(V3), index(V4), index(V5).
