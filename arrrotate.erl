-module(arrrotate).
% -export([main/1, reverse/2]).
-compile(export_all).

main(A, Q_list, [N, K, Q]) ->

	Res = rotate(A, K, N),

	lists:foreach( fun(Q0) ->
            { ok, [M]} = io:fread("", "~d"),
             io:format("~p~n", [lists:nth(M+1, Res)])
    end,Q_list),
    true.



print_nth(Arr, Q_list) -> 
	lists:foreach( fun(N) -> io:format("~p~n", [lists:nth(N+1, Arr)]) end, Q_list).

rotate(Arr, K, N) -> 

 	Pivot = N - (K rem N),
 	Tail = lists:nthtail(Pivot, Arr),
 	Head = lists:sublist(Arr, Pivot),
 	Tail ++ Head.

