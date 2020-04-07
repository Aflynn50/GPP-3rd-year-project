
next_season(V0) :- true_year_first_player(V86), true_season(V0), true_control(V86), season_type(V0), agent(V86).
next_season(V0) :- true_step(V38), V0 = fall, V38 = 5, season_type(V0), int(V38).
next_season(V0) :- true_step(V16), V0 = winter, V16 = 7, season_type(V0), int(V16).
next_season(V0) :- succ(V60, V49), true_plowed(V86, V71, V49), true_plowed(V87, V49, V60), V0 = spring, V71 = 2, season_type(V0), pos(V49), int(V49), pos(V60), int(V60), pos(V71), int(V71), agent(V86), agent(V87).
next_season(V0) :- true_year_second_player(V86), does_sow_row(V86, V71), V0 = summer, season_type(V0), pos(V71), int(V71), agent(V86).
