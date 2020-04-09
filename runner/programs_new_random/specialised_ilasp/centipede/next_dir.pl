
next_dir(V0, V1) :- is_right(V1), centipede(V0), true_at(V9, V2, V0), not has_pred(V9), obj(V0), action(V1), int(V2), int(V9).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V8, V2, V0), does(V10, V13), not is_left(V13), V2 = 7, obj(V0), action(V1), int(V2), int(V8), agent(V10), action(V13).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V8, V2, V0), V8 = 2, obj(V0), action(V1), int(V2), int(V8).
next_dir(V0, V1) :- is_left(V1), true_at(V3, V2, V0), not has_succ(V3), obj(V0), action(V1), int(V2), int(V3).
next_dir(V0, V1) :- succ(V7, V6), true_dir(V0, V1), true_at(V4, V9, V11), true_at(V7, V5, V0), V4 = 6, obj(V0), action(V1), int(V4), int(V5), int(V6), int(V7), int(V9), obj(V11).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V5, V9, V11), V5 = 5, obj(V0), action(V1), int(V5), int(V9), obj(V11).
next_dir(V0, V1) :- succ(V8, V7), is_left(V1), true_dir(V0, V1), true_at(V7, V3, V0), obj(V0), action(V1), int(V3), int(V7), int(V8).
