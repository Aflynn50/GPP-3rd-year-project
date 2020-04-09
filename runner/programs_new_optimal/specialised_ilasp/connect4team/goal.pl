
goal(V0, V1) :- true_control(V13), true_cell(V7, V7, V13), V1 = 100, V7 = 1, agent(V0), score(V1), pos(V7), agent(V13).
goal(V0, V1) :- true_control(V11), V1 = 0, V11 = red, agent(V0), score(V1), agent(V11).
