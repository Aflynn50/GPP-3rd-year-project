
next_capturecount(V0, V1) :- scoremap(V1, V1), agent(V0), int(V1).
next_capturecount(V0, V1) :- scoremap(V1, V4), input_move(V0, V4, V4, V6, V1), agent(V0), pos(V1), int(V1), pos(V4), int(V4), pos(V6), int(V6).
