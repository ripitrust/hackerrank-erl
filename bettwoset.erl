-module(bettwoset).
-export([smaller_set/2, bigger_set/2, solve/4]).




solve(M, N, A, B) ->

    Head = lists:nth(M, A),
    Tail = lists:nth(1, B),

    if Head < Tail ->
        Range = lists:seq(Head, Tail),
        length(lists:filter( fun(X) -> X end, lists:map( test(A,B), Range) ));

    Head >= Tail -> 0

    end.

test(A, B) ->

    fun (Num) ->

        SmRes = smaller_set(A, Num),
        BgRes = bigger_set(B, Num),

        if SmRes and BgRes -> true;
            true -> false
        end
    end.

smaller_set([], _) -> true;
smaller_set([A | Rest], Num) ->

    if Num rem A == 0 -> smaller_set(Rest, Num);
       true -> false
    end.

bigger_set([], _) -> true;
bigger_set([A | Rest], Num) ->

    if A rem Num == 0 -> bigger_set(Rest, Num);
       true -> false
    end.

    