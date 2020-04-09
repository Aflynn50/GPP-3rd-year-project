
legal_water_col(V0, V1) :- true_step(V28), true_sown(V0, V60, V81), V28 = 6, agent(V0), pos(V1), int(V1), int(V28), pos(V60), int(V60), pos(V81), int(V81).
legal_water_col(V0, V1) :- true_year_first_player(V0), true_season(V84), not true_control(V0), V84 = summer, agent(V0), pos(V1), int(V1), season_type(V84).
