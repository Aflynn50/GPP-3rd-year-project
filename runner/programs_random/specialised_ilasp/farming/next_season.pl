
next_season(V0) :- true_step(V60), true_sown(V86, V71, V81), V0 = summer, season_type(V0), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81), agent(V86).
next_season(V0) :- true_year_first_player(V86), true_season(V0), true_control(V86), season_type(V0), agent(V86).
next_season(V0) :- true_step(V38), V0 = fall, V38 = 5, season_type(V0), int(V38).
next_season(V0) :- true_step(V16), V0 = winter, V16 = 7, season_type(V0), int(V16).
next_season(V0) :- succ(V71, V60), succ(V81, V71), true_plowed(V87, V81, V60), not true_step(V71), V0 = spring, season_type(V0), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81), agent(V87).
