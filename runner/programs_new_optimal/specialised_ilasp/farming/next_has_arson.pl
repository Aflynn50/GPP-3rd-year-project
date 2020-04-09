
next_has_arson(V0) :- get_arson(V75), true_step(V75), agent(V0), int(V75).
next_has_arson(V0) :- true_has_arson(V0), true_control(V0), agent(V0).
