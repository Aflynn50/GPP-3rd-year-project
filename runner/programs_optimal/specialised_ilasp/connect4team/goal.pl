
goal(V0, V1) :- true_control(V0), V1 = 0, agent(V0), score(V1).
goal(V0, V1) :- true_control(V14), true_cell(V9, V7, V14), V1 = 100, V9 = 7, agent(V0), score(V1), pos(V7), pos(V9), agent(V14).
