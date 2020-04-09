
legal_move(V0, V1, V2, V3, V2) :- not true_control(V0), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3).
legal_move(V0, V1, V2, V1, V3) :- adjacent(V8, V3, V8, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V3), int(V3), pos(V8), int(V8).
