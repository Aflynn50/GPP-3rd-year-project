
next_whitePayoff(V0) :- true_whitePayoff(V0), does(V21, V23), V23 = finish, int(V0), agent(V21), action(V23).
next_whitePayoff(V0) :- true_blackPayoff(V0), does(V22, V24), V24 = continue, int(V0), agent(V22), action(V24).
