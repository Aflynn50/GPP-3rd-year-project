
legal_arson_row(V0, V1) :- true_plowed(V0, V81, V81), true_control(V0), V81 = 1, agent(V0), pos(V1), int(V1), pos(V81), int(V81).
legal_arson_row(V0, V1) :- true_has_arson(V87), not true_has_arson(V0), agent(V0), pos(V1), int(V1), agent(V87).
