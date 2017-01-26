-module(triplets).
-export([compare/3]).



compare([], [], Res) -> Res;

compare([A1|Arest], [B1|Brest], [Ares, Bres]) ->
    if  A1 > B1 -> 
            compare(Arest, Brest, [Ares+1, Bres]);
     	A1 == B1 -> 
            compare(Arest, Brest, [Ares, Bres]);
        A1 < B1 -> 
            compare(Arest, Brest, [Ares, Bres+1])
    end.


