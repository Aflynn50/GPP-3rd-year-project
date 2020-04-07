
legal_place(V0, V1, V2, V3) :- true_location(V2, V8, V1), V1 = pc, agent(V0), piece_type(V1), file_type(V2), rank_type(V3), int(V3), rank_type(V8), int(V8).
