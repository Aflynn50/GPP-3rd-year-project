
legal_mark(V0, V1, V2, V1) :- true_cell(V4, V4, V5), V2 = 3, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V4), cell_type(V4), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V2) :- true_cell(V4, V4, V5), V2 = 3, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V4), cell_type(V4), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V3, V5), V2 = 3, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V5, V5, V2), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_control(V0), true_cell(V5, V5, V7), V5 = 2, V7 = b, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- not true_control(V0), V0 = red, agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V2, V7), true_cell(V2, V2, V5), true_cell(V5, V1, V7), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- true_cell(V5, V5, V1), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5).
legal_mark(V0, V1, V2, V3) :- true_cell(V3, V1, V7), true_cell(V1, V1, V5), true_cell(V5, V2, V7), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V1, V2) :- true_cell(V2, V5, V7), true_cell(V1, V1, V7), true_cell(V4, V4, V5), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V4), cell_type(V4), pos(V5), cell_type(V5), cell_type(V7).
legal_mark(V0, V1, V2, V3) :- true_cell(V2, V2, V7), true_cell(V1, V1, V7), true_cell(V5, V5, V3), not true_control(V0), agent(V0), pos(V1), cell_type(V1), pos(V2), cell_type(V2), pos(V3), cell_type(V3), pos(V5), cell_type(V5), cell_type(V7).
