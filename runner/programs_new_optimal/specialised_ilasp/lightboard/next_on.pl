
next_on(V0, V1) :- successor(V0, V1), V0 = 2, pos(V0), int(V0), pos(V1), int(V1).
next_on(V0, V1) :- does_toggle(V9, V0, V1), not true_step(V2), V2 = 8, pos(V0), int(V0), pos(V1), int(V1), pos(V2), int(V2), agent(V9).
next_on(V0, V1) :- true_on(V6, V5), true_on(V0, V2), V6 = 4, pos(V0), int(V0), pos(V1), int(V1), pos(V2), int(V2), pos(V5), int(V5), pos(V6), int(V6).
