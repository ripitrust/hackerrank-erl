-module(timeconver).
-export([main/1]).

main(Time) ->

    AMIndex = string:str(Time, "AM"),
    PMIndex = string:str(Time, "PM"),
    if  AMIndex > 0 ->
    	Res = convert_am(Time);
        PMIndex > 0 -> 
    	Res = convert_pm(Time)
    end,

    io:format("~s", [Res]),
    true.



convert_am(Amstr) -> 
	
	Index = string:str(Amstr, "AM"),
	[Hr, Min, Sec] = string:tokens(string:sub_string(Amstr, 1, Index-1), ":"),
	if Hr == "12" ->
		string:join([ "0" ++ erlang:integer_to_list(erlang:list_to_integer(Hr)-12), Min, Sec], ":");
		true -> string:join([Hr, Min, Sec], ":")
	end.

convert_pm(Pmstr) -> 
	
	Index = string:str(Pmstr, "PM"),
	[Hr, Min, Sec] = string:tokens(string:sub_string(Pmstr, 1, Index-1), ":"),
	if Hr == "12" ->
		string:join([Hr, Min, Sec], ":");
		true -> string:join([erlang:integer_to_list(erlang:list_to_integer(Hr)+12), Min, Sec], ":")
	end.

