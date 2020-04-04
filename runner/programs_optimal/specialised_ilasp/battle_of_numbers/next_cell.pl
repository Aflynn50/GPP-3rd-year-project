
next_cell(V0, V1, V2, V3) :- succ(V2, V5), number(V0), step_int(V0), number(V1), step_int(V1), number(V2), step_int(V2), agent(V3), number(V5), step_int(V5).
next_cell(V0, V1, V1, V2) :- succ(V0, V3), number(V0), step_int(V0), number(V1), step_int(V1), agent(V2), number(V3), step_int(V3).
next_cell(V0, V0, V1, V2) :- succ(V0, V4), number(V0), step_int(V0), number(V1), step_int(V1), agent(V2), number(V4), step_int(V4).
