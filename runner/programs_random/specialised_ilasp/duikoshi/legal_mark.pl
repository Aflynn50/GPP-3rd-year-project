
legal_mark(V0, V1, V2, V3) :- true_cell(V5, V3, V5), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V5, V3), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V5, V3, V3), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V5, V5), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_control(V0), true_cell(V3, V3, V7), true_cell(V5, V3, V7), V3 = 4, V5 = 1, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- true_cell(V1, V1, V7), true_cell(V5, V3, V7), V0 = red, V3 = 3, V5 = 2, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- true_cell(V2, V2, V7), true_cell(V3, V5, V7), V0 = red, V3 = 2, V5 = 3, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- true_control(V0), true_cell(V5, V5, V7), true_cell(V3, V5, V7), V3 = 1, V5 = 4, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
