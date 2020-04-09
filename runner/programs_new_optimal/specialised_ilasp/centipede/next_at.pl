
next_at(V0, V1, V2) :- succ(V0, V1), true_at(V3, V4, V11), true_at(V0, V0, V10), V2 = o, V3 = 7, int(V0), int(V1), obj(V2), int(V3), int(V4), obj(V10), obj(V11).
next_at(V0, V1, V2) :- is_right(V12), true_at(V8, V1, V2), true_at(V1, V0, V10), does(V9, V12), V10 = o, int(V0), int(V1), obj(V2), int(V8), agent(V9), obj(V10), action(V12).
next_at(V0, V1, V2) :- succ(V7, V1), succ(V8, V7), true_at(V0, V7, V2), int(V0), int(V1), obj(V2), int(V7), int(V8).
next_at(V0, V1, V2) :- controls(V9, V2), true_at(V0, V1, V2), does(V9, V13), not is_dir(V13), int(V0), int(V1), obj(V2), agent(V9), action(V13).
next_at(V0, V1, V2) :- succ(V0, V7), true_at(V7, V1, V2), does(V9, V14), not is_right(V14), not is_noop(V14), int(V0), int(V1), obj(V2), int(V7), agent(V9), action(V14).
next_at(V0, V1, V2) :- succ(V0, V7), centipede(V2), true_at(V7, V1, V2), int(V0), int(V1), obj(V2), int(V7).
