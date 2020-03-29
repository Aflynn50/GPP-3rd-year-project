
next_at(V0, V1, V2) :- world_max(V0), player_object(V2), V1 = 3, int(V0), int(V1), obj(V2).
next_at(V0, V1, V2) :- true_at(V0, V1, V2), true_at(V3, V1, V13), not player_object(V2), V3 = 4, int(V0), int(V1), obj(V2), int(V3), obj(V13).
