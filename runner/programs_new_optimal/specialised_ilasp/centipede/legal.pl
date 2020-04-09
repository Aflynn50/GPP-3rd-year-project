
legal(V0, V1) :- succ(V2, V3), true_at(V3, V3, V12), not is_left(V1), agent(V0), action(V1), int(V2), int(V3), obj(V12).
legal(V0, V1) :- not is_left(V1), not is_fire(V1), agent(V0), action(V1).
legal(V0, V1) :- succ(V6, V5), succ(V7, V6), succ(V9, V8), is_left(V1), true_at(V5, V9, V10), agent(V0), action(V1), int(V5), int(V6), int(V7), int(V8), int(V9), obj(V10).
legal(V0, V1) :- succ(V9, V8), is_left(V1), true_at(V8, V9, V10), true_at(V9, V3, V11), not has_succ(V3), agent(V0), action(V1), int(V3), int(V8), int(V9), obj(V10), obj(V11).
legal(V0, V1) :- succ(V2, V3), is_fire(V1), true_at(V2, V3, V12), agent(V0), action(V1), int(V2), int(V3), obj(V12).
legal(V0, V1) :- has_succ(V9), true_dir(V12, V1), true_at(V8, V3, V12), true_at(V8, V9, V10), agent(V0), action(V1), int(V3), int(V8), int(V9), obj(V10), obj(V12).
legal(V0, V1) :- is_left(V1), true_at(V6, V3, V12), true_at(V9, V9, V10), V6 = 4, agent(V0), action(V1), int(V3), int(V6), int(V9), obj(V10), obj(V12).
