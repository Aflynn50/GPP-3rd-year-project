
legal_place(V0, V1, V2, V3) :- vertical(V2, V3, V2, V5), V1 = p7, agent(V0), piece_type(V1), file_type(V2), rank_type(V3), int(V3), rank_type(V5), int(V5).
