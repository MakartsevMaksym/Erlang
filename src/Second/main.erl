%%%-------------------------------------------------------------------
%%% @author makst
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. сент. 2020 15:17
%%%-------------------------------------------------------------------
-module(main).
-author("makst").

%% API
-export([sum/1]).

sum(N) -> sum(N-1, N).
sum(0, Summary) ->
  Summary;
sum(N, Summary) ->
  sum(N-1, Summary + N).


