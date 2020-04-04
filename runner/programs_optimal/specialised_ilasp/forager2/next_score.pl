
next_score(V0) :- world_max(V0), true_time(V6), V6 = 10, int(V0), int(V6).
next_score(V0) :- succ(V9, V0), succ(V2, V9), player_object(V17), true_at(V3, V2, V17), V3 = 3, int(V0), int(V2), int(V3), int(V9), obj(V17).
next_score(V0) :- bounds(V5), true_time(V5), V0 = 8, int(V0), int(V5).
next_score(V0) :- succ(V7, V0), is_left(V25), true_score(V7), does(V11, V25), int(V0), int(V7), agent(V11), action(V25).
