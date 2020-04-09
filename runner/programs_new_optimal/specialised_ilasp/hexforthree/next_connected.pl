
next_connected(V0, V1, V2) :- middle(V1, V21), true_step(V0), col(V0), int(V0), row(V1), col(V2), int(V2), col(V21), int(V21).
