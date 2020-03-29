
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- input_play(V0, V3, V3, V3, V3, V7), true_mark(V3, V3, V3, V5, V7), true_mark(V5, V5, V3, V3, V7), V1 = 100, agent(V0), int(V1), pos(V3), pos(V5), symbol(V7).
