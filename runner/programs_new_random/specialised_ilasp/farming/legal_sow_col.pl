
legal_sow_col(V0, V1) :- succ(V71, V60), true_step(V60), true_sown(V0, V71, V81), agent(V0), pos(V1), int(V1), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81).
legal_sow_col(V0, V1) :- true_sown(V87, V72, V1), not true_control(V0), not true_step(V39), V39 = 5, V72 = 2, agent(V0), pos(V1), int(V1), int(V39), pos(V72), int(V72), agent(V87).
