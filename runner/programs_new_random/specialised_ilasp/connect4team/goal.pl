
goal(V0, V1) :- succ(V4, V3), true_cell(V3, V5, V11), true_cell(V4, V5, V11), V1 = 100, agent(V0), score(V1), pos(V3), pos(V4), pos(V5), agent(V11).
goal(V0, V1) :- true_control(V11), V1 = 0, V11 = red, agent(V0), score(V1), agent(V11).
