
next_year_first_player(V0) :- true_year_first_player(V0), not true_season(V86), V86 = fall, agent(V0), season_type(V86).
next_year_first_player(V0) :- true_season(V86), true_control(V0), V86 = fall, agent(V0), season_type(V86).
