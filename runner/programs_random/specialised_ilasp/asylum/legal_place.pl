
legal_place(V0, V1, V2, V3) :- vertical(V2, V3, V2, V4), V1 = n3, agent(V0), piece_type(V1), file_type(V2), rank_type(V3), int(V3), rank_type(V4), int(V4).
