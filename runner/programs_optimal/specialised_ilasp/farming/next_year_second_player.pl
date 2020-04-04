
next_year_second_player(V0) :- true_year_second_player(V0), not true_season(V86), V86 = fall, agent(V0), season_type(V86).
next_year_second_player(V0) :- true_season(V86), does(V0, V90), V86 = fall, agent(V0), season_type(V86), action(V90).
