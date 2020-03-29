
legal_arson_col(V0, V1) :- true_has_arson(V87), not true_has_arson(V0), agent(V0), pos(V1), int(V1), agent(V87).
legal_arson_col(V0, V1) :- true_step(V72), true_plowed(V0, V81, V81), V72 = 19, agent(V0), pos(V1), int(V1), int(V72), pos(V81), int(V81).
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V54), V54 = 35, agent(V0), pos(V1), int(V1), int(V54).
legal_arson_col(V0, V1) :- true_year_second_player(V0), true_step(V37), V37 = 51, agent(V0), pos(V1), int(V1), int(V37).
