
legal_raise(V0, V1, V2) :- height_succ(V1, V9), true_builder(V0, V1, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V9), int(V9).
legal_raise(V0, V1, V1) :- true_cell(V11, V7, V21), agent(V0), pos(V1), int(V1), pos(V7), int(V7), pos(V11), int(V11), pos(V21), int(V21).
