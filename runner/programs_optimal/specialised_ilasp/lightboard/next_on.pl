
next_on(V0, V1) :- does_toggle(V9, V0, V1), pos(V0), int(V0), pos(V1), int(V1), agent(V9).
next_on(V0, V1) :- true_on(V0, V1), pos(V0), int(V0), pos(V1), int(V1).
