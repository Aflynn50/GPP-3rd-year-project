
legal_plow_row(V0, V1) :- true_step(V71), not true_control(V0), V71 = 2, agent(V0), pos(V1), int(V1), pos(V71), int(V71).
legal_plow_row(V0, V1) :- succ(V82, V81), point_succ_two(V3, V70), true_step(V3), true_score(V0, V82), V0 = red, agent(V0), pos(V1), int(V1), int(V3), int(V70), pos(V81), int(V81), int(V82).
legal_plow_row(V0, V1) :- true_year_first_player(V0), true_season(V83), not true_control(V0), V83 = winter, agent(V0), pos(V1), int(V1), season_type(V83).
