
next_sown(V0, V1, V2) :- true_plowed(V0, V1, V2), true_control(V0), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_sown(V0, V1, V2) :- true_sown(V0, V1, V2), not true_control(V0), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
