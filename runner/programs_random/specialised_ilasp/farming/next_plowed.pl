
next_plowed(V0, V1, V2) :- does_plow_row(V0, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_plowed(V0, V1, V2) :- succ(V61, V2), true_plowed(V0, V1, V2), not true_step(V61), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V61), int(V61).
next_plowed(V0, V1, V2) :- succ(V2, V51), true_plowed(V0, V1, V2), not true_step(V51), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V51), int(V51).
next_plowed(V0, V1, V2) :- true_sown(V87, V61, V1), does_plow_col(V0, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V61), int(V61), agent(V87).
