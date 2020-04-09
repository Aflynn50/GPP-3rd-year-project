
next_at(V0, V0, V1) :- world_succ(V0, V2), player_object(V1), true_at(V2, V0, V1), int(V0), obj(V1), int(V2).
next_at(V0, V1, V2) :- true_at(V0, V1, V2), not player_object(V2), int(V0), int(V1), obj(V2).
next_at(V0, V1, V2) :- world_succ(V1, V3), player_object(V2), true_at(V3, V0, V16), true_at(V0, V0, V2), int(V0), int(V1), obj(V2), int(V3), obj(V16).
