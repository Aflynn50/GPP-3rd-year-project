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

trace_goal([],_Step) :- !.

trace_goal([B|T],Step) :-
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),
    write('---'),nl,nl,
    write('positives:'),nl,
    (goal(B) -> write('\tgoal(robot, 100)') ; write('\tgoal(robot, 0)')),
    nl,nl,
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


trace_terminal([],_Step) :- !.


trace_terminal([B|T],Step) :-
    nl,nl,
    write('background:'),nl,
    background_board(B,Step),nl,
    write('---'),nl,nl,
    write('positives:'),
    (goal(B) -> nl,write('\tterminal()');true),
    nl,nl,
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

write_trace_to_file(Use,List) :-
    string_concat(Use,".dat",Ending),
    string_concat("eightpuzzle-traces/goal_",Ending,F1s),
    atom_string(F1,F1s),
    append(F1),
    trace_goal(List,0),
    told,
    string_concat("eightpuzzle-traces/legal_",Ending,F2s),
    atom_string(F2,F2s),
    append(F2),
    trace_legal(List,0),
    told,
    string_concat("eightpuzzle-traces/next_",Ending,F3s),
    atom_string(F3,F3s),
    append(F3),
    trace_next(List,0),
    told,
    string_concat("eightpuzzle-traces/terminal_",Ending,F4s),
    atom_string(F4,F4s),
    append(F4),
    trace_terminal(List,0),
    told.


bestsols(Path) :-
    start(B),
    bestfirst(B,Path).

randiter(0,[]).

randiter(N,[Path|T]) :-
    start(B),
    random_player(B,Path),
    N1 is N - 1,
    randiter(N1,T).

reverse([],Z,Z).
reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).

maprev([],_R).
maprev([H|T],[RH|RT]) :-
    reverse(H,RH,[]),
    maprev(T,RT).


%40?
genopt :-
    findnsols(50,P,bestsols(P),L),
    maprev(L,L3),
    length(L1,25),
    append(L1,L2,L3),
    maplist(write_trace_to_file('train'),L1),
    maplist(write_trace_to_file('test'),L2).

    
%30?
genrand :-
    randiter(200,L3),
    length(L1,100),
    append(L1,L2,L3),
    maplist(write_trace_to_file('train'),L1),
    maplist(write_trace_to_file('test'),L2).
