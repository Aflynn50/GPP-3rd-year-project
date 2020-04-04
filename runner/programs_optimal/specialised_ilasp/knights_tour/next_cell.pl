
next_cell(V0, V1, V2) :- does_place(V2, V0, V1), row(V0), col(V1), int(V1), agent(V2).
