-module(apporag).
-export([solve/8]).



solve(S, T, A, B, Apple, Orange) ->
    
    AppleDis = [ A + X || X <- Apple],
    OrangeDis = [ B + Y || Y <- Orange],

    NApple = length(lists:filter( fun(Dis) -> if Dis >= S andalso Dis =< T -> true ; true -> false end end, AppleDis ) ),
    NOrange = length(lists:filter( fun(Dis) -> if Dis >= S andalso Dis =< T -> true; true -> false end end, OrangeDis ) ),

    io:format("~p~n~p", [NApple, NOrange]),

    true.


