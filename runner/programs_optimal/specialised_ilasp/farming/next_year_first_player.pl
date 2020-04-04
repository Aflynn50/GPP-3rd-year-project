
next_year_first_player(V0) :- true_year_first_player(V0), not true_season(V86), V86 = fall, agent(V0), season_type(V86).
next_year_first_player(V0) :- true_ripe(V0, V71, V60), true_control(V0), agent(V0), pos(V60), int(V60), pos(V71), int(V71).
