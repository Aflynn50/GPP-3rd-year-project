
goal(V0, V1) :- true_control(V0), true_cell(V3, V3, V4), V1 = 0, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
goal(V0, V1) :- true_cell(V3, V3, V4), not true_control(V0), V1 = 100, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
goal(V0, V1) :- true_cell(V3, V4, V8), V1 = 50, V3 = 4, V4 = 3, V8 = b, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4), cell_type(V8).
goal(V0, V1) :- true_cell(V3, V3, V8), V1 = 50, V3 = 4, V8 = b, agent(V0), score(V1), pos(V3), cell_type(V3), cell_type(V8).
