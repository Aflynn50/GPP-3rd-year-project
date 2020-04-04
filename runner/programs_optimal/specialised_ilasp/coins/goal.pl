
goal(V0, V1) :- true_step(V5), V1 = 100, V5 = 5, agent(V0), score(V1), pos(V5).
goal(V0, V1) :- true_cell(V3, V10), V1 = 0, V10 = onecoin, agent(V0), score(V1), pos(V3), cell_value(V10).
