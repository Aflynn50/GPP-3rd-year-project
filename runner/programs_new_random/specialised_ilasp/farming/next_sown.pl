
next_sown(V0, V1, V2) :- true_step(V62), true_plowed(V0, V1, V51), not true_step(V2), V2 = 1, agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V51), int(V51), pos(V62), int(V62).
next_sown(V0, V1, V2) :- true_year_second_player(V0), true_sown(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
