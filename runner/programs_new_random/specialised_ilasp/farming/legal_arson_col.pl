
legal_arson_col(V0, V1) :- true_has_arson(V87), not true_has_arson(V0), agent(V0), pos(V1), int(V1), agent(V87).
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V72), V72 = 19, agent(V0), pos(V1), int(V1), int(V72).
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V54), V54 = 35, agent(V0), pos(V1), int(V1), int(V54).
