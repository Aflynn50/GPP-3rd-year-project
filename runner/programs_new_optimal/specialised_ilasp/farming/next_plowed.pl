
next_plowed(V0, V1, V1) :- succ(V1, V61), true_year_first_player(V0), does_plow_col(V0, V1), agent(V0), pos(V1), int(V1), pos(V61), int(V61).
next_plowed(V0, V1, V2) :- true_year_second_player(V0), true_plowed(V87, V2, V2), V1 = 1, agent(V0), pos(V1), int(V1), pos(V2), int(V2), agent(V87).
next_plowed(V0, V1, V2) :- does_plow_row(V0, V1), V2 = 4, agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_plowed(V0, V1, V2) :- succ(V1, V2), true_year_second_player(V0), true_plowed(V87, V51, V1), V1 = 2, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V51), int(V51), agent(V87).
next_plowed(V0, V1, V2) :- succ(V2, V1), true_year_second_player(V0), true_year_first_player(V87), true_plowed(V87, V2, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), agent(V87).
next_plowed(V0, V1, V2) :- true_year_first_player(V0), true_season(V83), V0 = red, V1 = 3, V83 = winter, agent(V0), pos(V1), int(V1), pos(V2), int(V2), season_type(V83).
