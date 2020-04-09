
next_score(V0) :- succ(V9, V8), true_time(V9), V0 = 4, int(V0), int(V8), int(V9).
next_score(V0) :- world_max(V0), does(V11, V26), not is_up(V26), int(V0), agent(V11), action(V26).
