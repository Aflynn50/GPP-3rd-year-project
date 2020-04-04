
next_step(V0) :- V0 = 2, pos(V0), int(V0).
next_step(V0) :- does_move(V31, V3, V3, V0, V0), pos(V0), int(V0), pos(V3), int(V3), agent(V31), cell_type(V31).
