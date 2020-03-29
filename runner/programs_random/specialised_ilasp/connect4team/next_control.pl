
next_control(V0) :- true_control(V10), V0 = blue, V10 = red, agent(V0), agent(V10).
next_control(V0) :- true_control(V13), V0 = orange, V13 = blue, agent(V0), agent(V13).
next_control(V0) :- true_control(V11), V0 = cyan, V11 = orange, agent(V0), agent(V11).
next_control(V0) :- true_control(V12), V0 = red, V12 = cyan, agent(V0), agent(V12).
