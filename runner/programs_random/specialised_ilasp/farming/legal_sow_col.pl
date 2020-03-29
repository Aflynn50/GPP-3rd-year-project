
legal_sow_col(V0, V1) :- true_sown(V87, V71, V50), not true_control(V0), not true_step(V78), V78 = 13, V87 = red, agent(V0), pos(V1), int(V1), pos(V50), int(V50), pos(V71), int(V71), int(V78), agent(V87).
legal_sow_col(V0, V1) :- true_sown(V87, V60, V60), not true_control(V0), V0 = red, agent(V0), pos(V1), int(V1), pos(V60), int(V60), agent(V87).
