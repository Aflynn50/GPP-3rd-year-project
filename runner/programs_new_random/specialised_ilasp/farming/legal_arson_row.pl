
legal_arson_row(V0, V1) :- true_step(V73), true_sown(V0, V71, V1), V73 = 18, agent(V0), pos(V1), int(V1), pos(V71), int(V71), int(V73).
legal_arson_row(V0, V1) :- true_year_second_player(V0), true_step(V72), V72 = 19, agent(V0), pos(V1), int(V1), int(V72).
legal_arson_row(V0, V1) :- true_year_second_player(V0), true_step(V54), V54 = 35, agent(V0), pos(V1), int(V1), int(V54).
legal_arson_row(V0, V1) :- true_year_second_player(V0), true_step(V37), V37 = 51, agent(V0), pos(V1), int(V1), int(V37).
legal_arson_row(V0, V1) :- true_year_second_player(V0), true_step(V20), V20 = 67, agent(V0), pos(V1), int(V1), int(V20).
