
legal_harvest_row(V0, V1) :- true_step(V17), true_ripe(V0, V71, V50), V17 = 7, agent(V0), pos(V1), int(V1), int(V17), pos(V50), int(V50), pos(V71), int(V71).
legal_harvest_row(V0, V1) :- true_year_first_player(V0), not true_step(V77), V0 = blue, V77 = 14, agent(V0), pos(V1), int(V1), int(V77).
legal_harvest_row(V0, V1) :- succ(V2, V3), true_score(V0, V3), agent(V0), pos(V1), int(V1), int(V2), int(V3).
