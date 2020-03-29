
next_cell(V0, V1, V2, V3) :- true_cell(V0, V1, V2, V3), number(V0), step_int(V0), number(V1), step_int(V1), number(V2), step_int(V2), agent(V3).
next_cell(V0, V1, V0, V2) :- does_move(V2, V0, V0, V0, V1), number(V0), step_int(V0), number(V1), step_int(V1), agent(V2).
