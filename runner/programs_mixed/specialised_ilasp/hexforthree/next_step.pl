
next_step(V0) :- succ(V2, V0), true_step(V2), int(V0), int(V2).
