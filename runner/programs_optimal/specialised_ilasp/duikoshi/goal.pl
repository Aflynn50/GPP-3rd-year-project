
goal(V0, V1) :- true_control(V0), true_cell(V4, V3, V4), V1 = 0, V4 = 3, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
goal(V0, V1) :- true_cell(V3, V6, V8), true_cell(V6, V3, V8), V1 = 50, V8 = b, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V6), cell_type(V6), cell_type(V8).
goal(V0, V1) :- true_cell(V4, V3, V4), not true_control(V0), V1 = 100, V4 = 3, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
