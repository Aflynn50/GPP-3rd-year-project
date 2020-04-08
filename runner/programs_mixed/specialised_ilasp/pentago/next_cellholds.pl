
next_cellholds(V0, V1, V0, V2) :- verticalflip(V1, V3, V1, V3), succ(V0, V1), pos(V0), pos(V1), agent(V2), pos(V3).
