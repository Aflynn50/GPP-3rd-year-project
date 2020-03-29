
next_score(V0) :- true_score(V0), not true_time(V0), not true_time(V5), V5 = 9, int(V0), int(V5).
next_score(V0) :- world_succ(V0, V1), player_object(V17), true_at(V1, V4, V17), true_at(V1, V4, V19), not player_object(V19), int(V0), int(V1), int(V4), obj(V17), obj(V19).
