
next_cellholds(V0, V1, V1, V2) :- verticalflip(V1, V3, V1, V3), V0 = 4, V2 = red, pos(V0), pos(V1), agent(V2), pos(V3).
next_cellholds(V0, V0, V0, V1) :- true_cellholds(V6, V0, V0, V9), does(V9, V10), pos(V0), agent(V1), pos(V6), agent(V9), action(V10).
