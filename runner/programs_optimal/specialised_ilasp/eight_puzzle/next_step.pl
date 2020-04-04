
next_step(V0) :- successor(V10, V0), true_step(V10), time_step(V0), score_int(V0), time_step(V10), score_int(V10).
