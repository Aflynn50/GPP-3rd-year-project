
next_at(V0, V0, V1) :- world_succ(V0, V2), true_at(V0, V3, V1), V3 = 3, int(V0), obj(V1), int(V2), int(V3).
next_at(V0, V1, V2) :- true_at(V0, V1, V2), not player_object(V2), int(V0), int(V1), obj(V2).
next_at(V0, V1, V2) :- world_succ(V4, V0), true_time(V6), true_at(V0, V4, V17), V6 = 9, int(V0), int(V1), obj(V2), int(V4), int(V6), obj(V17).
