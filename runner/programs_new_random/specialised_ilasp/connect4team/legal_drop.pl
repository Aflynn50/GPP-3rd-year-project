
legal_drop(V0, V1) :- not true_control(V12), not true_control(V10), V0 = red, V10 = orange, V12 = cyan, agent(V0), pos(V1), agent(V10), agent(V12).
legal_drop(V0, V1) :- true_control(V11), V0 = blue, V11 = orange, agent(V0), pos(V1), agent(V11).
legal_drop(V0, V1) :- true_cell(V3, V7, V0), V0 = orange, agent(V0), pos(V1), pos(V3), pos(V7).
legal_drop(V0, V1) :- V0 = cyan, agent(V0), pos(V1).
