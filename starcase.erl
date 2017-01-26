-module(staircase).
-export([staircase/1]).


staircase() -> 
	io:format("-n", [1,2,3,4,5]).
