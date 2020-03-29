
legal(V0, V1) :- is_right(V1), agent(V0), action(V1).
legal(V0, V1) :- succ(V4, V2), true_at(V2, V3, V12), not has_succ(V3), not is_dir(V1), V2 = 7, agent(V0), action(V1), int(V2), int(V3), int(V4), obj(V12).
legal(V0, V1) :- succ(V4, V2), true_at(V8, V2, V12), not is_fire(V1), V8 = 2, agent(V0), action(V1), int(V2), int(V4), int(V8), obj(V12).
legal(V0, V1) :- true_at(V3, V3, V12), not has_succ(V3), not is_left(V1), agent(V0), action(V1), int(V3), obj(V12).
legal(V0, V1) :- succ(V5, V4), true_at(V5, V4, V12), V4 = 6, agent(V0), action(V1), int(V4), int(V5), obj(V12).
legal(V0, V1) :- true_at(V6, V4, V12), V4 = 6, V6 = 4, agent(V0), action(V1), int(V4), int(V6), obj(V12).
legal(V0, V1) :- centipede(V12), true_at(V7, V4, V12), V4 = 6, V7 = 3, agent(V0), action(V1), int(V4), int(V7), obj(V12).
legal(V0, V1) :- true_at(V4, V3, V12), true_at(V8, V9, V10), V4 = 6, V8 = 2, agent(V0), action(V1), int(V3), int(V4), int(V8), int(V9), obj(V10), obj(V12).
legal(V0, V1) :- true_at(V7, V8, V11), V8 = 2, agent(V0), action(V1), int(V7), int(V8), obj(V11).
