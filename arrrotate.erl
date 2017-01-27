-module(arrrotate).
% -export([main/1, reverse/2]).
-compile(export_all).

main(A, Q_list, [N, K, Q]) ->

	Res = rotate(A, N, K),

	print_nth(Res, Q_list),

    true.



print_nth(Arr, Q_list) -> 
	lists:foreach( fun(N) -> io:format("~p~n", [lists:nth(N, Arr)]) end, Q_list).

rotate(Arr, K, N) -> 

 	Pivot = N - (K rem N),
 	Tail = lists:nthtail(Pivot, Arr),
 	Head = lists:sublist(Arr, Pivot),
 	Tail ++ Head.

