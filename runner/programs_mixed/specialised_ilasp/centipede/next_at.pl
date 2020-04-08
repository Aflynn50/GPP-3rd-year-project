
next_at(V0, V1, V2) :- succ(V0, V3), centipede(V2), true_at(V3, V1, V2), int(V0), int(V1), obj(V2), int(V3).
next_at(V0, V1, V2) :- succ(V8, V0), is_right(V12), controls(V9, V2), true_at(V8, V1, V2), does(V9, V12), int(V0), int(V1), obj(V2), int(V8), agent(V9), action(V12).
next_at(V0, V1, V2) :- succ(V1, V0), is_fire(V15), true_at(V0, V4, V11), does(V9, V15), V2 = o, int(V0), int(V1), obj(V2), int(V4), agent(V9), obj(V11), action(V15).
next_at(V0, V1, V2) :- controls(V9, V2), does(V9, V15), not is_right(V15), V0 = 3, V1 = 1, int(V0), int(V1), obj(V2), agent(V9), action(V15).
next_at(V0, V0, V1) :- true_at(V0, V7, V1), V7 = 2, int(V0), obj(V1), int(V7).
next_at(V0, V1, V2) :- succ(V0, V1), succ(V7, V0), true_at(V0, V0, V2), int(V0), int(V1), obj(V2), int(V7).
next_at(V0, V1, V2) :- succ(V1, V3), true_at(V0, V3, V2), not has_pred(V0), int(V0), int(V1), obj(V2), int(V3).
