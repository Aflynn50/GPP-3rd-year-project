
next_step(V0) :- vertical(V1, V3, V1, V0), true_step(V3), pos(V0), int(V0), pos(V1), int(V1), pos(V3), int(V3).
