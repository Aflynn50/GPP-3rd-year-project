
legal_move(V0, V1, V2, V3, V4) :- skiprank(V2, V4), agent(V0), file_type(V1), rank_type(V2), int(V2), file_type(V3), rank_type(V4), int(V4).
legal_move(V0, V1, V2, V1, V3) :- skiprank(V2, V8), agent(V0), file_type(V1), rank_type(V2), int(V2), rank_type(V3), int(V3), rank_type(V8), int(V8).
