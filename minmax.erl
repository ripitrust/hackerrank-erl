-module(timeconver).
-export([main/1]).

main(A) ->

    AMIndex = string:str(Time, "AM"),
    PMIndex = string:str(Time, "PM"),
    if  AMIndex > 0 ->
    	Res = convert_am(Time);
        PMIndex > 0 -> 
    	Res = convert_pm(Time)
    end,

    io:format("~s", [Res]),
    true.
