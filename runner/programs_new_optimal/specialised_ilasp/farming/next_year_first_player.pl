
next_year_first_player(V0) :- does_harvest_col(V0, V60), agent(V0), pos(V60), int(V60).
next_year_first_player(V0) :- true_year_first_player(V0), true_season(V83), V83 = winter, agent(V0), season_type(V83).
next_year_first_player(V0) :- true_control(V0), V0 = red, agent(V0).
