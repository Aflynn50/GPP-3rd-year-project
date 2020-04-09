
next_season(V0) :- true_season(V0), does_plow_row(V86, V60), season_type(V0), pos(V60), int(V60), agent(V86).
next_season(V0) :- true_plowed(V86, V60, V60), V0 = spring, season_type(V0), pos(V60), int(V60), agent(V86).
next_season(V0) :- true_sown(V86, V60, V60), V0 = summer, season_type(V0), pos(V60), int(V60), agent(V86).
next_season(V0) :- does_water_col(V87, V60), V0 = fall, season_type(V0), pos(V60), int(V60), agent(V87).
next_season(V0) :- true_step(V16), V0 = winter, V16 = 7, season_type(V0), int(V16).
