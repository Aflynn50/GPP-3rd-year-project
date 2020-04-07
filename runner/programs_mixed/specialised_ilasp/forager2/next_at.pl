
next_at(V0, V1, V2) :- true_at(V0, V1, V2), not player_object(V2), int(V0), int(V1), obj(V2).
next_at(V0, V1, V2) :- world_succ(V1, V3), player_object(V2), V0 = 3, int(V0), int(V1), obj(V2), int(V3).
