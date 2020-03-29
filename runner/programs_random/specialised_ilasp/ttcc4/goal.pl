
goal(V0, V1) :- V1 = 50, agent(V0), score(V1), int(V1).
:- add(V2, V3, V7), true_placecontrol(V0), true_cellholds(V7, V3, V2, V0), agent(V0), int(V1), pos(V2), pos(V3), pos(V7).
