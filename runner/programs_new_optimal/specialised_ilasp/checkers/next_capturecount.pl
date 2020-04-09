
next_capturecount(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
next_capturecount(V0, V1) :- true_control(V0), agent(V0), pos(V1), int(V1).
