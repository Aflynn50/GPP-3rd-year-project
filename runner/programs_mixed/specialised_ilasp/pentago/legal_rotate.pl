
legal_rotate(V0, V1, V2) :- quadrant(V1), true_placecontrol(V9), true_cellholds(V4, V5, V4, V0), not true_placecontrol(V0), agent(V0), pos(V1), dir(V2), pos(V4), pos(V5), agent(V9).
legal_rotate(V0, V1, V2) :- succ(V3, V1), true_placecontrol(V9), true_cellholds(V3, V5, V5, V0), agent(V0), pos(V1), dir(V2), pos(V3), pos(V5), agent(V9).
