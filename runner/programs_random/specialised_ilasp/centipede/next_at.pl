
next_at(V0, V1, V2) :- succ(V0, V3), centipede(V2), true_at(V3, V1, V2), int(V0), int(V1), obj(V2), int(V3).
next_at(V0, V0, V1) :- bullet(V1), true_at(V2, V3, V11), V0 = 2, V2 = 7, int(V0), obj(V1), int(V2), int(V3), obj(V11).
next_at(V0, V1, V2) :- succ(V8, V0), is_right(V12), controls(V9, V2), true_at(V8, V1, V2), does(V9, V12), int(V0), int(V1), obj(V2), int(V8), agent(V9), action(V12).
next_at(V0, V1, V2) :- succ(V7, V1), bullet(V2), true_at(V0, V7, V2), int(V0), int(V1), obj(V2), int(V7).
next_at(V0, V1, V2) :- succ(V1, V0), true_at(V0, V1, V2), does(V9, V13), not is_dir(V13), int(V0), int(V1), obj(V2), agent(V9), action(V13).
