% corner is 1,1 instead of 0,0
coords(N,X-Y) :-
    X is mod(N,3) + 1,
    Y is div(N,3) + 1.

showboard([A,B,C,D,E,F,G,H,I]) :-
    showline([A,B,C]),
    showline([D,E,F]),
    showline([G,H,I]).

showline([X,Y,Z]) :-
    showcell(X),
    showcell(Y),
    showcell(Z),nl.

showcell(b) :-
	write("  "), !.

showcell(V) :-
    write(V),write(" ").

showsol([]).

showsol([P|L]) :-
    showsol(L),
    nl,write('---'),nl,
    showboard(P).

trace_goal([B],Step) :-!,
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),
    write('---'),nl,nl,
    write('positives:'),nl,
    write('\tgoal(robot, 100)'),nl,nl,
    write('---').

trace_goal([B|T],Step) :-
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),
    write('---'),nl,nl,
    write('positives:'),nl,
    write('\tgoal(robot, 0)'),nl,nl,
    write('---'),
    Step1 is Step + 1,
    trace_goal(T,Step1).

legal([]) :- nl.
legal([H|T]) :-
	coords(H,X-Y),
	format('\tlegal_move(robot,~w,~w)', [X,Y]),nl,
	legal(T).


findall_helper(B,P,N) :-
	member(N,B),
	N \= b,
	neighbor(P,N).

trace_legal([B],Step) :-!,
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),nl,
    write('---'),nl,nl,
    write('positives:'),nl,
    blank_pos(B,P),
    findall(N,findall_helper(B,P,N),Ns),
    legal(Ns),
    write('---').

trace_legal([B|T],Step) :-
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),nl,
    write('---'),nl,nl,
    write('positives:'),nl,
    blank_pos(B,P),
    findall(N,findall_helper(B,P,N),Ns),
    legal(Ns),
    write('---'),
    Step1 is Step + 1,
    trace_legal(T,Step1).

next_board(B,Step) :-
	trace_next_board(B,0),
	format('\tnext_step(~w)',[Step]),nl.

trace_next_board([],_Pos).

trace_next_board([V|T],Pos) :-
    coords(Pos,X-Y),
    format('\tnext_cell(~w,~w,~w)', [X,Y,V]),nl,
    Pos1 is Pos + 1,
    trace_next_board(T,Pos1).

trace_next([_B],_Step) :- !.

trace_next([],_Step) :- !.

trace_next([B1,B2|T],Step) :-
    nl,nl,
    write('background:'),nl,
    blank_pos(B2,P),
    coords(P,X-Y),
    format('\tdoes_move(robot,~w,~w)', [X,Y]),nl,
    background_board(B1,Step),nl,
    write('---'),nl,nl,
    write('positives:'),nl,
    Step1 is Step + 1,
    next_board(B2,Step1),nl,nl,
    write('---'),
    trace_next([B2|T],Step1).


trace_terminal([B],Step) :-!,
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),nl,
    write('---'),nl,nl,
    write('positives:'),nl,
    write('\tterminal()'),nl,nl,
    write('---').

trace_terminal([B|T],Step) :-
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),nl,
    write('---'),nl,nl,
    write('positives:'),nl,nl,
    write('---'),
    Step1 is Step + 1,
    trace_terminal(T,Step1).


background_board(B,Step) :-
	trace_board(B,0),
	format('\ttrue_step(~w)',[Step]),nl.

trace_board([],_Pos).

trace_board([V|T],Pos) :-
    coords(Pos,X-Y),
    format('\ttrue_cell(~w,~w,~w)', [X,Y,V]),nl,
    Pos1 is Pos + 1,
    trace_board(T,Pos1).

write_trace_to_file(List) :-
    append('runner/data/train/eight_puzzle_goal_train'),
    trace_goal(List,0),
    told,
    append('runner/data/train/eight_puzzle_legal_train'),
    trace_legal(List,0),
    told,
    append('runner/data/train/eight_puzzle_next_train'),
    trace_next(List,0),
    told,
    append('runner/data/train/eight_puzzle_terminal_train'),
    trace_terminal(List,0),
    told.