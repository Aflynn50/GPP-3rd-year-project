
legal_water_row(V0, V1) :- true_sown(V87, V71, V71), true_ripe(V0, V50, V50), agent(V0), pos(V1), int(V1), pos(V50), int(V50), pos(V71), int(V71), agent(V87).
legal_water_row(V0, V1) :- true_year_second_player(V0), true_season(V86), not true_control(V0), V86 = fall, agent(V0), pos(V1), int(V1), season_type(V86).
