
next_blackPayoff(V0) :- true_blackPayoff(V0), does(V21, V23), V23 = finish, int(V0), agent(V21), action(V23).
next_blackPayoff(V0) :- does(V21, V23), V0 = 15, V23 = continue, int(V0), agent(V21), action(V23).
