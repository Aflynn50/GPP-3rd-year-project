
next_score(V0) :- world_succ(V2, V0), true_at(V3, V2, V17), V3 = 2, int(V0), int(V2), int(V3), obj(V17).
next_score(V0) :- player_object(V17), is_down(V26), true_at(V2, V0, V17), does(V11, V26), int(V0), int(V2), agent(V11), obj(V17), action(V26).
next_score(V0) :- world_succ(V1, V0), player_object(V17), true_at(V2, V1, V17), not true_score(V1), V2 = 3, int(V0), int(V1), int(V2), obj(V17).
next_score(V0) :- succ(V9, V0), succ(V2, V9), player_object(V17), true_at(V1, V2, V17), V1 = 4, int(V0), int(V1), int(V2), int(V9), obj(V17).
