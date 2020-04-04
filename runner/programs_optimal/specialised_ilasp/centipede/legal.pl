
legal(V0, V1) :- not is_left(V1), not is_fire(V1), agent(V0), action(V1).
legal(V0, V1) :- succ(V2, V3), true_at(V3, V3, V12), not is_dir(V1), agent(V0), action(V1), int(V2), int(V3), obj(V12).
legal(V0, V1) :- succ(V2, V3), true_at(V2, V3, V12), not is_left(V1), agent(V0), action(V1), int(V2), int(V3), obj(V12).
legal(V0, V1) :- is_left(V1), true_at(V9, V3, V11), not has_pred(V9), not has_succ(V3), agent(V0), action(V1), int(V3), int(V9), obj(V11).
