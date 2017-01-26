-module(staircase).
-export([draw_staircase/1]).


draw_staircase(N) -> 
	 io:format("~s", [staircase(N-1, 1, [])]).


staircase(-1 , _, Res) -> string:join(Res, "\n");

staircase(Nspace, Nhash, Res) -> 
	
	New =  Res ++ [string:concat(string:copies(" ", Nspace), string:copies("#", Nhash))],
	staircase(Nspace-1, Nhash+1, New).
	




