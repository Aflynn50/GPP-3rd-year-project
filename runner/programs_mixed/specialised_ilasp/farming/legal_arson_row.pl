
legal_arson_row(V0, V1) :- true_has_arson(V87), not true_has_arson(V0), agent(V0), pos(V1), int(V1), agent(V87).
legal_arson_row(V0, V1) :- succ(V81, V71), true_year_second_player(V0), true_sown(V87, V71, V71), not true_control(V87), not true_has_arson(V0), agent(V0), pos(V1), int(V1), pos(V71), int(V71), pos(V81), int(V81), agent(V87).
