
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- true_mark(V3, V3, V3, V6, V7), true_control(V2), V1 = 100, V2 = oplayer, agent(V0), int(V1), agent(V2), pos(V3), pos(V6), symbol(V7).
