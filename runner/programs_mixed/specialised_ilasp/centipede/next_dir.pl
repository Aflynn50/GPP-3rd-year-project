
next_dir(V0, V1) :- is_right(V1), centipede(V0), true_at(V9, V2, V0), not has_pred(V9), obj(V0), action(V1), int(V2), int(V9).
next_dir(V0, V1) :- succ(V6, V5), is_left(V1), true_dir(V0, V1), true_at(V5, V3, V0), obj(V0), action(V1), int(V3), int(V5), int(V6).
next_dir(V0, V1) :- is_left(V1), true_at(V3, V2, V0), not has_succ(V3), obj(V0), action(V1), int(V2), int(V3).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V7, V2, V0), does(V10, V1), V7 = 3, obj(V0), action(V1), int(V2), int(V7), agent(V10).
next_dir(V0, V1) :- succ(V7, V6), true_dir(V0, V1), true_at(V4, V9, V11), true_at(V7, V5, V0), V4 = 6, obj(V0), action(V1), int(V4), int(V5), int(V6), int(V7), int(V9), obj(V11).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V8, V7, V0), V8 = 2, obj(V0), action(V1), int(V7), int(V8).
next_dir(V0, V1) :- true_dir(V0, V1), true_at(V5, V9, V11), not bullet(V11), V5 = 5, obj(V0), action(V1), int(V5), int(V9), obj(V11).
next_dir(V0, V1) :- succ(V8, V7), true_dir(V0, V1), true_at(V6, V7, V12), V6 = 4, obj(V0), action(V1), int(V6), int(V7), int(V8), obj(V12).
