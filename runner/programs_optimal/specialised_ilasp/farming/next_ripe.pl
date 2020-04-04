
next_ripe(V0, V1, V2) :- true_sown(V0, V1, V2), true_control(V0), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_ripe(V0, V1, V2) :- true_ripe(V0, V1, V2), not true_season(V83), V83 = winter, agent(V0), pos(V1), int(V1), pos(V2), int(V2), season_type(V83).
