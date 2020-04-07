
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V54), V54 = 35, agent(V0), pos(V1), int(V1), int(V54).
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V20), V20 = 67, agent(V0), pos(V1), int(V1), int(V20).
legal_arson_col(V0, V1) :- succ(V1, V50), true_year_second_player(V87), true_plowed(V87, V50, V50), agent(V0), pos(V1), int(V1), pos(V50), int(V50), agent(V87).
legal_arson_col(V0, V1) :- true_year_second_player(V87), true_season(V85), true_plowed(V87, V1, V1), true_control(V0), V85 = spring, agent(V0), pos(V1), int(V1), season_type(V85), agent(V87).
