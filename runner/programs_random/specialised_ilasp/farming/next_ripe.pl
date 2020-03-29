
next_ripe(V0, V1, V2) :- true_sown(V0, V1, V2), does_water_row(V0, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_ripe(V0, V1, V2) :- true_year_first_player(V0), true_ripe(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_ripe(V0, V1, V2) :- true_year_first_player(V0), true_season(V84), true_plowed(V0, V1, V1), V2 = 4, V84 = summer, agent(V0), pos(V1), int(V1), pos(V2), int(V2), season_type(V84).
