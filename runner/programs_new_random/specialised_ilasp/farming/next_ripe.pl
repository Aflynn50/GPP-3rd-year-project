
next_ripe(V0, V1, V2) :- true_sown(V0, V1, V2), does_water_row(V87, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), agent(V87).
next_ripe(V0, V1, V2) :- true_year_first_player(V0), true_ripe(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_ripe(V0, V1, V2) :- true_sown(V87, V72, V72), does(V87, V90), V72 = 2, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V72), int(V72), agent(V87), action(V90).
