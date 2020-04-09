
next_score(V0) :- bounds(V5), true_time(V5), V0 = 8, int(V0), int(V5).
next_score(V0) :- succ(V7, V0), true_time(V10), true_score(V7), V10 = 0, int(V0), int(V7), int(V10).
next_score(V0) :- true_time(V6), V0 = 6, V6 = 9, int(V0), int(V6).
next_score(V0) :- world_max(V2), player_object(V17), true_at(V1, V2, V17), not true_time(V2), V0 = 7, int(V0), int(V1), int(V2), obj(V17).
next_score(V0) :- world_succ(V1, V2), world_succ(V3, V1), true_score(V0), true_at(V1, V2, V21), true_at(V1, V3, V17), int(V0), int(V1), int(V2), int(V3), obj(V17), obj(V21).
