
next_capturecount(V0, V1) :- scoremap(V1, V1), does_move(V25, V10, V14, V12, V12), agent(V0), int(V1), pos(V10), int(V10), pos(V12), int(V12), pos(V14), int(V14), agent(V25).
next_capturecount(V0, V1) :- does_jump(V0, V1, V10, V14, V14), agent(V0), pos(V1), int(V1), pos(V10), int(V10), pos(V14), int(V14).
