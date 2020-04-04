
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- add(V2, V3, V7), true_cellholds(V7, V2, V2, V10), true_cellholds(V2, V2, V3, V10), agent(V0), int(V1), pos(V2), pos(V3), pos(V7), agent(V10).
