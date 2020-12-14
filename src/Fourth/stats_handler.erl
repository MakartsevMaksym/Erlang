-module(stats_handler).
-author("makst").
-export([terminate/1, handle_event/2]).

terminate(Stats) ->
  {stats, Stats}.

handle_event({Type, _Id, Description}, Stats) ->
  case lists:keyfind(Key = {Type, Description}, 1, Stats) of
    {Key, Count} ->
      lists:keyreplace(Key, 1, Stats, {Key, Count+1});
    false ->
      Key = Key,
      [{Key, 1} | Stats]
  end;
handle_event(_Event, Stats) -> Stats.
