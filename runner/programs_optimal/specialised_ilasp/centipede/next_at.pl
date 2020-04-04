
next_at(V0, V1, V2) :- succ(V0, V1), true_at(V3, V4, V11), true_at(V0, V0, V10), V2 = o, V3 = 7, int(V0), int(V1), obj(V2), int(V3), int(V4), obj(V10), obj(V11).
next_at(V0, V1, V2) :- succ(V8, V1), bullet(V2), true_at(V0, V8, V2), int(V0), int(V1), obj(V2), int(V8).
next_at(V0, V0, V1) :- succ(V0, V8), true_at(V0, V0, V1), does(V9, V15), not is_dir(V15), int(V0), obj(V1), int(V8), agent(V9), action(V15).
next_at(V0, V1, V2) :- succ(V8, V0), is_right(V12), true_at(V8, V1, V2), true_at(V1, V5, V10), does(V9, V12), int(V0), int(V1), obj(V2), int(V5), int(V8), agent(V9), obj(V10), action(V12).
next_at(V0, V1, V2) :- succ(V0, V8), centipede(V2), true_at(V8, V1, V2), int(V0), int(V1), obj(V2), int(V8).
