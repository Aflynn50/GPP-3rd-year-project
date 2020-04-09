
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 7, pos(V0), cell_value(V1).
next_cell(V0, V1) :- succ(V6, V5), succ(V0, V6), true_cell(V3, V1), true_cell(V6, V1), does_jump(V9, V3, V5), pos(V0), cell_value(V1), pos(V3), pos(V5), pos(V6), agent(V9).
next_cell(V0, V1) :- true_cell(V0, V1), V0 = 2, pos(V0), cell_value(V1).
next_cell(V0, V1) :- does_jump(V9, V0, V6), V1 = zerocoins, pos(V0), cell_value(V1), pos(V6), agent(V9).
next_cell(V0, V1) :- succ(V3, V2), succ(V6, V5), true_cell(V0, V1), does_jump(V9, V3, V6), V0 = 8, pos(V0), cell_value(V1), pos(V2), pos(V3), pos(V5), pos(V6), agent(V9).
next_cell(V0, V1) :- does_jump(V9, V4, V0), V1 = twocoins, pos(V0), cell_value(V1), pos(V4), agent(V9).
next_cell(V0, V1) :- succ(V4, V0), succ(V5, V4), true_cell(V0, V1), does_jump(V9, V8, V5), pos(V0), cell_value(V1), pos(V4), pos(V5), pos(V8), agent(V9).
next_cell(V0, V1) :- succ(V7, V0), true_step(V7), true_cell(V0, V1), pos(V0), cell_value(V1), pos(V7).
next_cell(V0, V1) :- succ(V7, V6), true_cell(V4, V1), does_jump(V9, V6, V4), V0 = 1, pos(V0), cell_value(V1), pos(V4), pos(V6), pos(V7), agent(V9).
next_cell(V0, V1) :- succ(V6, V5), succ(V0, V6), true_cell(V0, V1), does_jump(V9, V5, V3), pos(V0), cell_value(V1), pos(V3), pos(V5), pos(V6), agent(V9).
next_cell(V0, V1) :- true_step(V8), true_cell(V3, V1), V0 = 4, V8 = 1, pos(V0), cell_value(V1), pos(V3), pos(V8).
next_cell(V0, V1) :- true_cell(V0, V1), V1 = twocoins, pos(V0), cell_value(V1).
