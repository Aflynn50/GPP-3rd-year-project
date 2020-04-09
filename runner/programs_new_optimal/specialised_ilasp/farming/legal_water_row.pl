
legal_water_row(V0, V1) :- true_sown(V87, V71, V60), true_ripe(V0, V81, V71), agent(V0), pos(V1), int(V1), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81), agent(V87).
legal_water_row(V0, V1) :- true_year_second_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
