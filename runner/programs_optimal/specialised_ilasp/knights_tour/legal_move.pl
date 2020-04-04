
legal_move(V0, V1, V1, V2, V3) :- add(V1, V56, V51, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3), int(V51), add_arg(V56).
gal_move(V0, V1, V2, V3, V1) :- succ(V16, V1), true_captures(V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3), pos(V16), int(V16).
legal_move(V0, V1, V2, V2, V3) :- true_step(V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
