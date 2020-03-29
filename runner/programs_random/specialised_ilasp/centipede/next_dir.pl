
next_dir(V0, V1) :- is_right(V1), centipede(V0), true_at(V9, V3, V0), not has_pred(V9), obj(V0), action(V1), int(V3), int(V9).
next_dir(V0, V1) :- is_left(V1), true_at(V3, V2, V0), not has_succ(V3), obj(V0), action(V1), int(V2), int(V3).
next_dir(V0, V1) :- succ(V8, V7), succ(V9, V8), true_dir(V0, V1), true_at(V8, V2, V0), obj(V0), action(V1), int(V2), int(V7), int(V8), int(V9).
