
next_sown(V0, V1, V2) :- true_plowed(V0, V1, V2), true_control(V0), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_sown(V0, V1, V2) :- true_sown(V0, V1, V2), does(V0, V90), agent(V0), pos(V1), int(V1), pos(V2), int(V2), action(V90).
next_sown(V0, V1, V2) :- succ(V1, V2), true_sown(V0, V1, V2), true_plowed(V87, V71, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V71), int(V71), agent(V87).
