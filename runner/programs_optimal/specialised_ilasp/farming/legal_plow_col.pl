
legal_plow_col(V0, V1) :- true_year_first_player(V0), true_step(V82), V82 = 0, agent(V0), pos(V1), int(V1), int(V82).
legal_plow_col(V0, V1) :- true_plowed(V0, V72, V61), not true_control(V0), agent(V0), pos(V1), int(V1), pos(V61), int(V61), pos(V72), int(V72).
