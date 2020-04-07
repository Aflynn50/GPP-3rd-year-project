
goal(V0, V1) :- true_cell(V4, V4, V8), V1 = 50, V4 = 3, V8 = b, agent(V0), score(V1), pos(V4), cell_type(V4), cell_type(V8).
goal(V0, V1) :- true_control(V2), V1 = 50, V2 = green, agent(V0), score(V1), agent(V2).
goal(V0, V1) :- true_control(V0), true_cell(V4, V4, V3), V0 = red, V1 = 0, V4 = 3, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
goal(V0, V1) :- true_cell(V4, V4, V3), not true_control(V0), V0 = green, V1 = 100, V4 = 3, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4).
