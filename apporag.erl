-module(apporag).
-export([solve/6]).



solve(S, T, A, B, Apple, Orange) ->
    
    AppleDis = [ A + X || X <- Apple],
    OrangeDis = [ B + Y || Y <- Orange],

    NApple = length(lists:filter( fun(Dis) ->  Dis >= S andalso Dis =< T end, AppleDis ) ),
    NOrange = length(lists:filter( fun(Dis) -> Dis >= S andalso Dis =< T end, OrangeDis ) ),

    io:format("~p~n~p", [NApple, NOrange]),

    true.


