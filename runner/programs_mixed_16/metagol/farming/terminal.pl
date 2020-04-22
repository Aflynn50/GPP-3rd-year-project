
true.

% learning terminal/1
% clauses: 1
terminal(A):-game_end(A,B),my_true_step(A,B).
