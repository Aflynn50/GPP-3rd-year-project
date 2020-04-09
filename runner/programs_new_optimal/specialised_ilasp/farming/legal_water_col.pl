
legal_water_col(V0, V1) :- true_sown(V87, V71, V60), true_ripe(V0, V81, V71), agent(V0), pos(V1), int(V1), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81), agent(V87).
legal_water_col(V0, V1) :- true_year_second_player(V0), true_ripe(V87, V71, V71), true_control(V87), agent(V0), pos(V1), int(V1), pos(V71), int(V71), agent(V87).
