
goal(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
goal(V0, V1) :- scoremap(V23, V1), input_move(V0, V1, V1, V5, V23), agent(V0), pos(V1), int(V1), pos(V5), int(V5), pos(V23), int(V23).
