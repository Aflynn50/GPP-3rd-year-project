
legal(V0, V1) :- true_at(V2, V3, V12), not is_left(V1), V2 = 7, agent(V0), action(V1), int(V2), int(V3), obj(V12).
legal(V0, V1) :- true_at(V4, V3, V12), true_at(V7, V9, V10), V4 = 6, V7 = 3, agent(V0), action(V1), int(V3), int(V4), int(V7), int(V9), obj(V10), obj(V12).
legal(V0, V1) :- succ(V7, V6), centipede(V12), true_at(V6, V3, V12), true_at(V7, V9, V10), agent(V0), action(V1), int(V3), int(V6), int(V7), int(V9), obj(V10), obj(V12).
legal(V0, V1) :- succ(V2, V3), succ(V4, V2), succ(V5, V4), true_at(V7, V2, V11), not is_fire(V1), agent(V0), action(V1), int(V2), int(V3), int(V4), int(V5), int(V7), obj(V11).
legal(V0, V1) :- true_at(V7, V3, V12), not has_succ(V3), V7 = 3, agent(V0), action(V1), int(V3), int(V7), obj(V12).
legal(V0, V1) :- succ(V9, V8), centipede(V12), true_at(V7, V8, V11), true_at(V8, V3, V12), not is_left(V1), agent(V0), action(V1), int(V3), int(V7), int(V8), int(V9), obj(V11), obj(V12).
