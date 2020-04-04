
next_plowed(V0, V1, V2) :- succ(V1, V2), does_plow_row(V0, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_plowed(V0, V1, V2) :- does_plow_col(V0, V2), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_plowed(V0, V1, V1) :- does_plow_row(V0, V1), agent(V0), pos(V1), int(V1).
next_plowed(V0, V1, V2) :- succ(V2, V1), does_plow_row(V0, V1), agent(V0), pos(V1), int(V1), pos(V2), int(V2).
next_plowed(V0, V1, V2) :- true_plowed(V0, V1, V2), does(V0, V90), agent(V0), pos(V1), int(V1), pos(V2), int(V2), action(V90).
