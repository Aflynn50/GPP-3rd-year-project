
goal(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
goal(V0, V1) :- cellbetween(V1, V5, V7, V9, V5, V7), true_step(V9), agent(V0), pos(V1), int(V1), pos(V5), int(V5), pos(V7), int(V7), pos(V9), int(V9).
