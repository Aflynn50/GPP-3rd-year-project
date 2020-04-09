
goal(V0, V1) :- scoremap(V9, V1), true_captures(V9), agent(V0), pos(V1), int(V1), pos(V9), int(V9).
goal(V0, V1) :- scoremap(V1, V1), true_captures(V1), agent(V0), int(V1).
