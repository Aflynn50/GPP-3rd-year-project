
next_plowed(V0, V1, V2) :- succ(V72, V1), does_plow_col(V0, V2), not true_step(V72), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V72), int(V72).
next_plowed(V0, V1, V1) :- does_plow_col(V0, V1), agent(V0), pos(V1), int(V1).
next_plowed(V0, V1, V2) :- succ(V61, V2), V0 = red, V1 = 2, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V61), int(V61).
next_plowed(V0, V1, V2) :- true_year_first_player(V0), true_season(V83), V0 = red, V1 = 2, V83 = winter, agent(V0), pos(V1), int(V1), pos(V2), int(V2), season_type(V83).
next_plowed(V0, V1, V2) :- succ(V71, V2), true_year_first_player(V0), true_sown(V0, V1, V81), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V71), int(V71), pos(V81), int(V81).
