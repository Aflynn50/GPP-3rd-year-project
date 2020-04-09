
goal(V0, V1) :- true_control(V0), true_cell(V3, V4, V6), true_cell(V4, V6, V4), V1 = 0, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4), pos(V6), cell_type(V6).
goal(V0, V1) :- true_cell(V3, V4, V6), true_cell(V4, V6, V4), not true_control(V0), V1 = 100, V3 = 4, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4), pos(V6), cell_type(V6).
goal(V0, V1) :- true_control(V2), V1 = 50, V2 = green, agent(V0), score(V1), agent(V2).
goal(V0, V1) :- true_cell(V4, V4, V8), V1 = 50, V4 = 3, V8 = b, agent(V0), score(V1), pos(V4), cell_type(V4), cell_type(V8).
