
legal_plow_row(V0, V1) :- true_year_first_player(V0), true_step(V82), V82 = 0, agent(V0), pos(V1), int(V1), int(V82).
legal_plow_row(V0, V1) :- true_year_first_player(V0), true_season(V83), not true_control(V0), V83 = winter, agent(V0), pos(V1), int(V1), season_type(V83).
legal_plow_row(V0, V1) :- true_year_second_player(V0), true_season(V85), not true_control(V0), V85 = spring, agent(V0), pos(V1), int(V1), season_type(V85).
