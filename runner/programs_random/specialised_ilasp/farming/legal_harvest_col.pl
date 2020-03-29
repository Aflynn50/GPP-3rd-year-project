
legal_harvest_col(V0, V1) :- true_year_second_player(V87), true_year_first_player(V0), true_ripe(V87, V71, V81), not true_step(V77), V77 = 14, agent(V0), pos(V1), int(V1), pos(V71), int(V71), int(V77), pos(V81), int(V81), agent(V87).
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
