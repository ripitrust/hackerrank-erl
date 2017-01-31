-module(timeconver).
-export([main/0]).

main() ->
   
    Arr = read_array(5, "~d"),
    Sum = lists:foldl(fun(X, Acc) -> X+Acc end, 0, Arr),
    Res = [ Sum - X || X <- Arr ],
    io:format("~p ~p", [lists:min(Res), lists:max(Res)]),
    true.

read_array(0,D) -> [];
read_array(N,D) -> 
   {ok, [X]} = io:fread("", D),
   
   [X | read_array(N-1,D)].