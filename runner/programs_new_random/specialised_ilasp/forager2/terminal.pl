
terminal :- player_object(V17), true_at(V0, V0, V17), not true_time(V5), V0 = 4, V5 = 9, int(V0), int(V5), obj(V17).
terminal :- player_object(V17), true_at(V1, V4, V19), true_at(V4, V1, V17), V19 = green4, int(V1), int(V4), obj(V17), obj(V19).
terminal :- world_succ(V3, V2), true_score(V3), true_at(V2, V3, V17), int(V2), int(V3), obj(V17).
terminal :- succ(V10, V4), true_at(V4, V4, V17), not true_time(V10), not true_time(V4), not bounds(V10), int(V4), int(V10), obj(V17).
terminal :- world_min(V4), true_score(V2), true_at(V4, V2, V17), V2 = 3, int(V2), int(V4), obj(V17).
terminal :- world_min(V4), player_object(V17), true_at(V4, V3, V17), not true_time(V3), V3 = 2, int(V3), int(V4), obj(V17).
terminal :- world_succ(V0, V1), world_succ(V2, V0), world_succ(V3, V2), true_at(V0, V3, V17), not true_time(V1), int(V0), int(V1), int(V2), int(V3), obj(V17).
