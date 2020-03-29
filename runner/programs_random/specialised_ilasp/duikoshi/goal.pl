
goal(V0, V1) :- true_cell(V3, V5, V3), not true_control(V0), V1 = 100, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
goal(V0, V1) :- true_control(V0), true_cell(V3, V5, V3), V1 = 0, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
goal(V0, V1) :- true_cell(V3, V5, V8), true_cell(V5, V3, V8), V1 = 50, V8 = b, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V8).
