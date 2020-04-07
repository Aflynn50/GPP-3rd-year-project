
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_sown(V87, V60, V81), true_season(V83), true_control(V0), V83 = winter, agent(V0), pos(V1), int(V1), pos(V60), int(V60), pos(V81), int(V81), season_type(V83), agent(V87).
legal_harvest_col(V0, V1) :- true_year_first_player(V0), true_season(V83), true_control(V0), V0 = blue, V83 = winter, agent(V0), pos(V1), int(V1), season_type(V83).
