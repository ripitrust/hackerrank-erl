-module(adddele).
-export([solve/3, common_string/2]).

solve(A,B,N) -> 

    Alen = length(A),
    Blen = length(B),
    SubLen = length( common_string(A, B) ),


    if (Alen-SubLen) + (Blen-SubLen) > N ->  "No";
       ((Alen-SubLen) + (Blen-SubLen)) rem 2 == N rem 2 ->  "Yes";
        Alen + Blen =< N -> "Yes";
        true -> "No"
    end.


common_string(A, B) -> common_string(A, B, []).
common_string(A, [], Res) -> lists:reverse(Res);
common_string([], B, Res) -> lists:reverse(Res);
common_string([A|Arest], [B|Brest], Res) ->
    
    if A == B -> common_string(Arest, Brest,   [ A | Res ]  );
        true ->lists:reverse(Res)
    end.

