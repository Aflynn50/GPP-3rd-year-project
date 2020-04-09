
legal_say(V0, V1) :- V1 = fizzbuzz, agent(V0), word(V1).
legal_say(V0, V1) :- V1 = fizz, agent(V0), word(V1).
legal_say(V0, V1) :- V1 = buzz, agent(V0), word(V1).
legal_say(V0, V1) :- V1 = 1, agent(V0), int(V1), word(V1).
