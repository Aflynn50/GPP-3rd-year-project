
legal_place(V0, V1, V2, V3) :- rotation(V7, V3, V2, V2, V3), agent(V0), pos(V1), pos(V2), pos(V3), dir(V7).
legal_place(V0, V1, V2, V2) :- succ(V2, V1), V0 = red, agent(V0), pos(V1), pos(V2).
