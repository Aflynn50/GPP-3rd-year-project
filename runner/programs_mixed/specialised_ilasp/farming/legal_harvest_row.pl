
legal_harvest_row(V0, V1) :- succ(V71, V60), true_year_first_player(V0), true_ripe(V87, V81, V71), not true_control(V87), V87 = red, agent(V0), pos(V1), int(V1), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81), agent(V87).
legal_harvest_row(V0, V1) :- true_year_first_player(V0), true_sown(V87, V71, V1), not true_season(V84), V84 = summer, agent(V0), pos(V1), int(V1), pos(V71), int(V71), season_type(V84), agent(V87).
