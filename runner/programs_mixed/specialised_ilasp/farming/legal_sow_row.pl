
legal_sow_row(V0, V1) :- true_year_second_player(V0), true_season(V84), not true_control(V0), V84 = summer, agent(V0), pos(V1), int(V1), season_type(V84).
legal_sow_row(V0, V1) :- true_sown(V87, V72, V50), true_season(V85), not true_control(V0), V85 = spring, agent(V0), pos(V1), int(V1), pos(V50), int(V50), pos(V72), int(V72), season_type(V85), agent(V87).
