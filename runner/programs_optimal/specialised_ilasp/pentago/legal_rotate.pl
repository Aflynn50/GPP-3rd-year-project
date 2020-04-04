
legal_rotate(V0, V1, V2) :- quadrant(V1), true_placecontrol(V9), V9 = black, agent(V0), pos(V1), dir(V2), agent(V9).
