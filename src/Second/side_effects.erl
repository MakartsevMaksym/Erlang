%%%-------------------------------------------------------------------
%%% @author makst
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. сент. 2020 17:59
%%%-------------------------------------------------------------------
-module(side_effects).
-author("makst").
%% API
-export([print_nums/1, print_nums_2/1]).

print_nums(Num) when Num >= 1 ->
  io:fwrite("Number: ~p~n", [Num]),
  print_nums(Num - 1);
print_nums(0) -> {ok}.

print_nums_2(0) -> {ok};
print_nums_2(Num) ->
  case Num rem 2 of
    0 ->
      print_nums_2(Num - 1);
    _ ->
      io:fwrite("Number: ~p~n", [Num]),
      print_nums_2(Num - 1)
  end.


