
goal(V0, V1) :- V1 = 0, agent(V0), mark(V0), int(V1).
goal(V0, V1) :- true_cell(V24, V28), not true_control(V0), V0 = black, V24 = d, V28 = blank, agent(V0), mark(V0), int(V1), pos(V24), mark(V28).
