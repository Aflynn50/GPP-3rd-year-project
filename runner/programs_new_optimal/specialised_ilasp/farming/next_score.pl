
next_score(V0, V1) :- true_score(V0, V1), agent(V0), int(V1).
next_score(V0, V1) :- succ(V1, V80), point_succ_two(V1, V70), does_harvest_row(V0, V60), agent(V0), int(V1), pos(V60), int(V60), int(V70), int(V80).
