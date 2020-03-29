
next_capture(V0, V1) :- true_capture(V0, V1), agent(V0), number(V1), step_int(V1).
