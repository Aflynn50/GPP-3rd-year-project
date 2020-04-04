
legal_knightmove(V0, V1, V2, V3, V4) :- plus2(V1, V3), agent(V0), pos(V1), score(V1), int(V1), pos(V2), score(V2), int(V2), pos(V3), score(V3), int(V3), pos(V4), score(V4), int(V4).
legal_knightmove(V0, V1, V2, V3, V1) :- succ(V1, V62), agent(V0), pos(V1), score(V1), int(V1), pos(V2), score(V2), int(V2), pos(V3), score(V3), int(V3), pos(V62), score(V62), int(V62).
