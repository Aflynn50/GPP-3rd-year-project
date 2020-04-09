
goal(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
goal(V0, V1) :- scoremap(V23, V1), input_move(V0, V1, V1, V5, V23), agent(V0), pos(V1), int(V1), pos(V5), int(V5), pos(V23), int(V23).
_control(V0), V1 = 100, V4 = 3, agent(V0), score(V1), pos(V4), cell_type(V4), pos(V6), cell_type(V6).
goal(V0, V1) :- true_cell(V3, V4, V8), true_cell(V4, V3, V8), V1 = 50, V4 = 3, V8 = b, agent(V0), score(V1), pos(V3), cell_type(V3), pos(V4), cell_type(V4), cell_type(V8).
