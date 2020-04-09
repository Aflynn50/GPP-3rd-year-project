
legal_offer(V0, V1) :- sum(V2, V5, V2), true_rounds(V5), V0 = white, agent(V0), index(V1), int(V1), int(V2), index(V5), int(V5).
legal_offer(V0, V1) :- not true_control(V0), V0 = white, agent(V0), index(V1), int(V1).
