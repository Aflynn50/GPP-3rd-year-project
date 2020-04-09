
goal(V0, V1) :- V1 = 0, agent(V0), int(V1).
goal(V0, V1) :- globalindex(V7, V3, V2, V7, V2), true_cellholds(V3, V4, V3, V0), V1 = 100, agent(V0), int(V1), pos(V2), pos(V3), pos(V4), pos(V7).
