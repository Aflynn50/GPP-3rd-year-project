
next_control(V0) :- true_year_second_player(V0), true_ripe(V0, V71, V60), agent(V0), pos(V60), int(V60), pos(V71), int(V71).
next_control(V0) :- not true_control(V0), not true_season(V86), V86 = fall, agent(V0), season_type(V86).
