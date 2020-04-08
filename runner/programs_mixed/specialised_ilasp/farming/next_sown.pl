
next_sown(V0, V1, V2) :- true_year_second_player(V0), true_sown(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_sown(V0, V1, V2) :- true_sown(V0, V1, V2), not true_season(V84), V84 = summer, agent(V0), pos(V1), int(V1), pos(V2), int(V2), season_type(V84).
next_sown(V0, V1, V2) :- true_plowed(V0, V1, V2), true_plowed(V87, V2, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), agent(V87).
