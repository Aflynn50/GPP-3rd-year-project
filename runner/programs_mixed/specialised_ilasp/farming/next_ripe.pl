
next_ripe(V0, V1, V2) :- true_year_first_player(V0), true_ripe(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_ripe(V0, V1, V2) :- succ(V1, V61), true_sown(V0, V1, V2), true_plowed(V0, V1, V61), does(V0, V90), not true_step(V61), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V61), int(V61), action(V90).
next_ripe(V0, V1, V2) :- true_sown(V0, V1, V2), does_water_row(V0, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
