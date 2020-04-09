
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V83), true_ripe(V87, V50, V81), V83 = winter, agent(V0), pos(V1), int(V1), pos(V50), int(V50), pos(V81), int(V81), season_type(V83), agent(V87).
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V83), true_plowed(V87, V50, V50), true_control(V0), V83 = winter, agent(V0), pos(V1), int(V1), pos(V50), int(V50), season_type(V83), agent(V87).
