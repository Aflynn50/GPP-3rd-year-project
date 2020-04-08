
next_cell(V0, V1) :- does_jump(V9, V0, V4), V1 = zerocoins, pos(V0), cell_value(V1), pos(V4), agent(V9).
next_cell(V0, V1) :- does_jump(V9, V3, V0), V1 = twocoins, pos(V0), cell_value(V1), pos(V3), agent(V9).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 2, pos(V0), cell_value(V1).
next_cell(V0, V1) :- succ(V3, V2), succ(V6, V5), true_cell(V0, V1), does_jump(V9, V3, V6), V0 = 8, pos(V0), cell_value(V1), pos(V2), pos(V3), pos(V5), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V4, V0), succ(V5, V4), true_cell(V0, V1), does_jump(V9, V8, V5), pos(V0), cell_value(V1), pos(V4), pos(V5), pos(V8), agent(V9).
next_cell(V0, V1) :- true_cell(V0, V1), does_jump(V9, V3, V6), V0 = 3, V3 = 8, pos(V0), cell_value(V1), pos(V3), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V2, V3), true_cell(V3, V1), does_jump(V9, V3, V6), V0 = 1, pos(V0), cell_value(V1), pos(V2), pos(V3), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V6, V5), succ(V0, V6), true_cell(V0, V1), does_jump(V9, V5, V3), pos(V0), cell_value(V1), pos(V3), pos(V5), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V2, V3), succ(V0, V2), true_cell(V3, V10), true_cell(V2, V1), V10 = twocoins, pos(V0), cell_value(V1), pos(V2), pos(V3), cell_value(V10).
next_cell(V0, V1) :- succ(V0, V5), true_cell(V5, V11), true_cell(V0, V1), V11 = zerocoins, pos(V0), cell_value(V1), pos(V5), cell_value(V11).
next_cell(V0, V1) :- succ(V3, V0), true_cell(V0, V1), does_jump(V9, V3, V6), pos(V0), cell_value(V1), pos(V3), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V5, V0), succ(V6, V5), succ(V7, V6), true_step(V7), true_cell(V0, V1), pos(V0), cell_value(V1), pos(V5), pos(V6), pos(V7).
