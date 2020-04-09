
next_has_arson(V0) :- get_arson(V75), true_step(V75), agent(V0), int(V75).
next_has_arson(V0) :- true_has_arson(V0), true_control(V0), agent(V0).
next_has_arson(V0) :- true_step(V56), true_plowed(V0, V49, V81), true_plowed(V0, V71, V49), V49 = 4, V56 = 33, agent(V0), pos(V49), int(V49), int(V56), pos(V71), int(V71), pos(V81), int(V81).
