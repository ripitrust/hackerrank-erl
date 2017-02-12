-module(kag).
-export([solve/4]).




solve(X1, V1, X2, V2) ->

    StartDiff = X2 - X1,
    SpeedDiff = V1 - V2,

    if SpeedDiff =< 0 -> "No";
        (StartDiff rem SpeedDiff) == 0 -> "Yes";
        true -> "No"

    end.



    




