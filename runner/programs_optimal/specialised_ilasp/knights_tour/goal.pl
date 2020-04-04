
goal(V0, V1) :- scoreMap(V1, V1), true_moveCount(V1), agent(V0), int(V1).
goal(V0, V1) :- scoreMap(V50, V1), true_moveCount(V50), agent(V0), pos(V1), int(V1), pos(V50), int(V50).
