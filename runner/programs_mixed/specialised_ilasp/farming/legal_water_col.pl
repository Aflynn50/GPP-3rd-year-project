
legal_water_col(V0, V1) :- true_year_first_player(V0), true_season(V84), not true_control(V0), V84 = summer, agent(V0), pos(V1), int(V1), season_type(V84).
legal_water_col(V0, V1) :- true_year_second_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
