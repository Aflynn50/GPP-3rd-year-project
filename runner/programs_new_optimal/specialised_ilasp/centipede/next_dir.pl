
next_dir(V0, V1) :- succ(V6, V5), true_dir(V0, V1), true_at(V5, V3, V0), obj(V0), action(V1), int(V3), int(V5), int(V6).
