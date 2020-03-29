
next_sown(V0, V1, V2) :- true_season(V85), true_plowed(V0, V1, V51), V2 = 1, V85 = spring, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V51), int(V51), season_type(V85).
next_sown(V0, V1, V2) :- true_sown(V0, V1, V2), V0 = blue, agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_sown(V0, V1, V2) :- true_sown(V0, V1, V81), not true_step(V2), V2 = 4, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V81), int(V81).
