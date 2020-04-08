
legal_sow_col(V0, V1) :- true_sown(V0, V71, V60), true_plowed(V0, V81, V71), not true_step(V39), V39 = 5, agent(V0), pos(V1), int(V1), int(V39), pos(V60), int(V60), pos(V71), int(V71), pos(V81), int(V81).
legal_sow_col(V0, V1) :- true_step(V50), V50 = 4, agent(V0), pos(V1), int(V1), pos(V50), int(V50).
