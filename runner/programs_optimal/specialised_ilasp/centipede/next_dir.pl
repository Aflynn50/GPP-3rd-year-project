
next_dir(V0, V1) :- succ(V9, V8), true_dir(V0, V1), true_at(V8, V3, V0), obj(V0), action(V1), int(V3), int(V8), int(V9).
