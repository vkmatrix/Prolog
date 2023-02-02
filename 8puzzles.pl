move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,T3,T4,T5,T6,T7,0,T8]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,T3,T4,T5,T6,0,T8,T7]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,T3,T4,T5,0,T7,T8,T6]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,T3,T4,0,T6,T7,T8,T5]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,T3,0,T5,T6,T7,T8,T4]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,T2,0,T4,T5,T6,T7,T8,T3]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[T1,0,T3,T4,T5,T6,T7,T8,T2]).
move([T1,T2,T3,T4,T5,T6,T7,T8,0],[0,T2,T3,T4,T5,T6,T7,T8,T1]).

solution([1,2,3,4,5,6,7,8,0],_).

solution(State,History):-
    move(State,Newstate),
    \+member(Newstate,History),
    solution(Newstate,[Newstate|History]).

