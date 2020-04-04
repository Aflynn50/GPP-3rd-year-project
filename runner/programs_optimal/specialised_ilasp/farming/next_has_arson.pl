
next_has_arson(V0) :- true_score(V87, V70), does_plow_col(V0, V81), V70 = 20, agent(V0), int(V70), pos(V81), int(V81), agent(V87).
next_has_arson(V0) :- succ(V40, V39), true_step(V39), true_season(V83), V0 = blue, V83 = winter, agent(V0), int(V39), int(V40), season_type(V83).
