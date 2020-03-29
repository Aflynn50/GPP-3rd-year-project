
next_location(V0, V1, V2) :- true_location(V0, V9, V2), file_type(V0), rank_type(V1), int(V1), piece_type(V2), rank_type(V9), int(V9).
